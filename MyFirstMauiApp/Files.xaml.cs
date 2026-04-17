using System.Collections.ObjectModel;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using Microsoft.Maui.ApplicationModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using MyFirstMauiApp.Models;
using MyFirstMauiApp.Services;
using System.Diagnostics;

namespace MyFirstMauiApp
{
    public partial class Files : ContentPage, INotifyPropertyChanged
    {
        private ObservableCollection<FileItem> _filteredFiles = new();
        private List<FileItem> _allFilesList = new();
        private DatabaseService _databaseService = null!;
        private System.Timers.Timer? _reminderCheckTimer;
        private FileItem? _selectedFile;
        private FileItem? _pendingUploadFile;
        private FileItem? _vibrationFile;
        private FileVibrationService _vibrationService = new();

        public ObservableCollection<FileItem> FilteredFiles
        {
            get => _filteredFiles;
            set
            {
                _filteredFiles = value;
                OnPropertyChanged();
            }
        }

        public Files()
        {
            InitializeComponent();

            BindingContext = this;

            _databaseService = App.DatabaseService ?? new DatabaseService();

            InitializeDatabase();
        }

        private async void InitializeDatabase()
        {
            try
            {
                await _databaseService.InitializeAsync();
                await LoadFilesFromDatabase();
                await UpdateAllFilesList();
                await UpdateStatistics();
                StartReminderChecker();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Database initialization error: {ex.Message}");
                await DisplayAlertAsync("Error", "Failed to initialize database", "OK");
            }
        }

        private async Task LoadFilesFromDatabase()
        {
            try
            {
                _allFilesList = await _databaseService.GetAllFilesAsync();
                await UpdateAllFilesList();
                await UpdateStatistics();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error loading files: {ex.Message}");
                await DisplayAlertAsync("Error", "Failed to load files from database", "OK");
            }
        }

        private async Task UpdateAllFilesList()
        {
            FilteredFiles.Clear();
            foreach (var file in _allFilesList)
            {
                FilteredFiles.Add(file);
            }
        }

        private async Task UpdateStatistics()
        {
            try
            {
                var allFiles = await _databaseService.GetAllFilesAsync();
                var filesWithReminders = await _databaseService.GetFilesWithRemindersAsync();
                var totalStorage = await _databaseService.GetTotalStorageUsedAsync();

                TotalFilesLabel.Text = allFiles.Count.ToString();
                RemindersLabel.Text = filesWithReminders.Count.ToString();

                if (totalStorage > 1024 * 1024)
                {
                    StorageLabel.Text = $"{totalStorage / (1024.0 * 1024.0):F1} MB";
                }
                else
                {
                    StorageLabel.Text = $"{totalStorage / 1024.0:F1} KB";
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating statistics: {ex.Message}");
            }
        }

        private void OnSearchTextChanged(object sender, TextChangedEventArgs e)
        {
            var searchText = e.NewTextValue?.ToLower() ?? "";

            if (string.IsNullOrWhiteSpace(searchText))
            {
                FilteredFiles.Clear();
                foreach (var file in _allFilesList)
                {
                    FilteredFiles.Add(file);
                }
            }
            else
            {
                var filtered = _allFilesList.Where(f =>
                    f.FileName.ToLower().Contains(searchText)).ToList();

                FilteredFiles.Clear();
                foreach (var file in filtered)
                {
                    FilteredFiles.Add(file);
                }
            }
        }

        private async void OnUploadFileClicked(object sender, EventArgs e)
        {
            ReminderDatePicker.MinimumDate = DateTime.Now.Date;
            ReminderTimePicker.Time = DateTime.Now.TimeOfDay;
            SelectedFileName.Text = "No file selected";
            _pendingUploadFile = null;
            UploadPopup.IsVisible = true;
        }

        // FIXED: Only ONE OnChooseFileClicked method with UserId
        private async void OnChooseFileClicked(object sender, EventArgs e)
        {
            try
            {
                var customFileType = new FilePickerFileType(
                    new Dictionary<DevicePlatform, IEnumerable<string>>
                    {
                        { DevicePlatform.Android, new[] { "*/*" } }
                    });

                var result = await FilePicker.PickAsync(new PickOptions
                {
                    PickerTitle = "Select a file",
                    FileTypes = customFileType
                });

                if (result != null)
                {
                    var fileName = Path.GetFileName(result.FullPath);
                    var fileExtension = Path.GetExtension(fileName).ToLower();
                    var fileIcon = GetFileIcon(fileExtension);
                    var fileType = GetFileType(fileExtension);

                    var destinationPath = Path.Combine(FileSystem.AppDataDirectory, fileName);

                    if (File.Exists(destinationPath))
                    {
                        var newFileName = $"{Path.GetFileNameWithoutExtension(fileName)}_{DateTime.Now.Ticks}{fileExtension}";
                        destinationPath = Path.Combine(FileSystem.AppDataDirectory, newFileName);
                        fileName = newFileName;
                    }

                    using (var sourceStream = await result.OpenReadAsync())
                    using (var destinationStream = File.Create(destinationPath))
                    {
                        await sourceStream.CopyToAsync(destinationStream);
                    }

                    _pendingUploadFile = new FileItem
                    {
                        FileName = fileName,
                        FilePath = destinationPath,
                        Icon = fileIcon,
                        Size = new FileInfo(destinationPath).Length,
                        FileType = fileType,
                        HasReminder = false,
                        Category = "Personal",
                        UserId = App.FirebaseService?.CurrentUser?.Id ?? ""
                    };

                    SelectedFileName.Text = fileName;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlertAsync("Error", $"Failed to select file: {ex.Message}", "OK");
            }
        }

        private async Task<string> SelectCategoryAsync()
        {
            var categories = new[] { "Study", "Personal", "Events", "Work", "Documents" };
            var result = await DisplayActionSheetAsync("Select Category", "Cancel", null, categories);
            return result != "Cancel" && !string.IsNullOrEmpty(result) ? result : "Personal";
        }

        private async void OnSaveFileClicked(object sender, EventArgs e)
        {
            if (_pendingUploadFile == null)
            {
                await DisplayAlertAsync("Error", "Please select a file first", "OK");
                return;
            }

            var category = await SelectCategoryAsync();
            _pendingUploadFile.Category = category;

            var success = await _databaseService.AddFileAsync(_pendingUploadFile);

            if (success)
            {
                DateTime selectedDate = ReminderDatePicker.Date!.Value;
                TimeSpan selectedTime = ReminderTimePicker.Time!.Value;
                DateTime reminderDateTime = new DateTime(selectedDate.Year, selectedDate.Month, selectedDate.Day, selectedTime.Hours, selectedTime.Minutes, selectedTime.Seconds);

                if (reminderDateTime > DateTime.Now)
                {
                    await _databaseService.SetFileReminderAsync(_pendingUploadFile.Id, reminderDateTime);
                    FileNotificationService.ScheduleFileReminder(_pendingUploadFile, reminderDateTime);
                    await DisplayAlertAsync("Success",
                        $"File uploaded successfully!\nReminder set for {reminderDateTime:MM/dd/yyyy HH:mm}", "OK");
                }
                else
                {
                    await DisplayAlertAsync("Success", "File uploaded successfully!", "OK");
                }

                await LoadFilesFromDatabase();
                await UpdateStatistics();
                UploadPopup.IsVisible = false;
                _pendingUploadFile = null;
            }
            else
            {
                await DisplayAlertAsync("Error", "Failed to save file", "OK");
            }
        }

        private void OnCancelUploadClicked(object sender, EventArgs e)
        {
            UploadPopup.IsVisible = false;
            _pendingUploadFile = null;
        }

        private async void OnViewFileClicked(object sender, EventArgs e)
        {
            if (sender is Button button && button.CommandParameter is FileItem file)
            {
                await ShowFilePreview(file);
            }
        }

        private async Task ShowFilePreview(FileItem file)
        {
            try
            {
                _selectedFile = file;
                PreviewFileName.Text = file.FileName;
                PreviewPopup.IsVisible = true;

                var fileExtension = Path.GetExtension(file.FileName).ToLower();
                var htmlContent = await GetFileHtmlContent(file.FilePath, fileExtension);

                if (!string.IsNullOrEmpty(htmlContent))
                {
                    FilePreview.Source = new HtmlWebViewSource
                    {
                        Html = htmlContent
                    };
                }
                else
                {
                    FilePreview.Source = new HtmlWebViewSource
                    {
                        Html = $@"
                            <!DOCTYPE html>
                            <html>
                            <head>
                                <meta name='viewport' content='width=device-width, initial-scale=1.0'>
                                <style>
                                    body {{ margin: 0; padding: 20px; font-family: Arial, sans-serif; text-align: center; }}
                                    .info {{ padding: 50px; background: #f5f5f5; border-radius: 10px; }}
                                    h3 {{ color: #2196F3; }}
                                    p {{ color: #666; }}
                                </style>
                            </head>
                            <body>
                                <div class='info'>
                                    <h3>📄 {file.FileName}</h3>
                                    <p>Preview not available for this file type.</p>
                                    <p>Click 'Open' to view with external app.</p>
                                </div>
                            </body>
                            </html>"
                    };
                }
            }
            catch (Exception ex)
            {
                await DisplayAlertAsync("Error", $"Cannot preview file: {ex.Message}", "OK");
                PreviewPopup.IsVisible = false;
            }
        }

        private async Task<string> GetFileHtmlContent(string filePath, string fileExtension)
        {
            try
            {
                var fileBytes = File.ReadAllBytes(filePath);
                var base64String = Convert.ToBase64String(fileBytes);

                return fileExtension switch
                {
                    ".pdf" => $@"
                        <!DOCTYPE html>
                        <html>
                        <head>
                            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
                            <style>body {{ margin: 0; padding: 0; }} embed {{ width: 100%; height: 100%; }}</style>
                        </head>
                        <body>
                            <embed src='data:application/pdf;base64,{base64String}' type='application/pdf' />
                        </body>
                        </html>",

                    ".jpg" or ".jpeg" or ".png" or ".gif" => $@"
                        <!DOCTYPE html>
                        <html>
                        <head>
                            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
                            <style>body {{ margin: 0; padding: 0; display: flex; justify-content: center; align-items: center; min-height: 100vh; background: #f0f0f0; }}
                            img {{ max-width: 100%; max-height: 100vh; object-fit: contain; }}</style>
                        </head>
                        <body>
                            <img src='data:image/{fileExtension.Replace(".", "")};base64,{base64String}' />
                        </body>
                        </html>",

                    ".txt" => $@"
                        <!DOCTYPE html>
                        <html>
                        <head>
                            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
                            <style>body {{ margin: 20px; font-family: monospace; white-space: pre-wrap; word-wrap: break-word; }}</style>
                        </head>
                        <body>
                            <pre>{System.Text.Encoding.UTF8.GetString(fileBytes)}</pre>
                        </body>
                        </html>",

                    _ => string.Empty
                };
            }
            catch
            {
                return string.Empty;
            }
        }

        private async void OnOpenExternalClicked(object sender, EventArgs e)
        {
            if (_selectedFile != null)
            {
                try
                {
                    await Launcher.OpenAsync(new OpenFileRequest
                    {
                        File = new ReadOnlyFile(_selectedFile.FilePath),
                        Title = "Open File"
                    });
                }
                catch (Exception ex)
                {
                    await DisplayAlertAsync("Error", $"Cannot open file: {ex.Message}", "OK");
                }
            }
        }

        private void ClosePreviewPopup(object sender, EventArgs e)
        {
            PreviewPopup.IsVisible = false;
            FilePreview.Source = null;
            _selectedFile = null;
        }

        private async void OnDeleteFileClicked(object sender, EventArgs e)
        {
            if (sender is Button button && button.CommandParameter is FileItem file)
            {
                bool confirm = await DisplayAlertAsync("Delete File",
                    $"Are you sure you want to delete {file.FileName}?", "Yes", "No");

                if (confirm)
                {
                    bool success = await _databaseService.DeleteFileAsync(file.Id);
                    if (success)
                    {
                        FileNotificationService.CancelFileReminder(file);
                        await LoadFilesFromDatabase();
                        await UpdateStatistics();
                        await DisplayAlertAsync("Success", "File deleted successfully", "OK");
                    }
                    else
                    {
                        await DisplayAlertAsync("Error", "Failed to delete file", "OK");
                    }
                }
            }
        }

        private string GetFileIcon(string extension)
        {
            return extension switch
            {
                ".pdf" => "📄",
                ".jpg" or ".jpeg" or ".png" or ".gif" => "🖼️",
                ".doc" or ".docx" => "📝",
                ".xls" or ".xlsx" => "📊",
                ".txt" => "📃",
                _ => "📁"
            };
        }

        private string GetFileType(string extension)
        {
            return extension switch
            {
                ".pdf" => "PDF Document",
                ".jpg" or ".jpeg" => "JPEG Image",
                ".png" => "PNG Image",
                ".gif" => "GIF Image",
                ".doc" or ".docx" => "Word Document",
                ".xls" or ".xlsx" => "Excel Spreadsheet",
                ".txt" => "Text File",
                _ => "Unknown Type"
            };
        }

        private void StartReminderChecker()
        {
            _reminderCheckTimer = new System.Timers.Timer(10000);
            _reminderCheckTimer.Elapsed += async (sender, e) =>
            {
                await CheckOverdueReminders();
            };
            _reminderCheckTimer.Start();
        }

        private async Task CheckOverdueReminders()
        {
            try
            {
                var overdueReminders = await _databaseService.GetOverdueRemindersAsync();

                foreach (var file in overdueReminders)
                {
                    await Microsoft.Maui.ApplicationModel.MainThread.InvokeOnMainThreadAsync(async () =>
                    {
                        if (_vibrationFile != null && VibrationPopup.IsVisible)
                        {
                            return;
                        }

                        await ShowVibrationPopup(file);
                    });

                    await Task.Delay(500);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error checking reminders: {ex.Message}");
            }
        }

        private async Task ShowVibrationPopup(FileItem file)
        {
            if (!Microsoft.Maui.ApplicationModel.MainThread.IsMainThread)
            {
                await Microsoft.Maui.ApplicationModel.MainThread.InvokeOnMainThreadAsync(async () => await ShowVibrationPopup(file));
                return;
            }

            _vibrationFile = file;
            VibrationFileName.Text = file.FileName;
            VibrationPopup.IsVisible = true;
            _vibrationService.StartContinuousVibration();
        }

        private async void OnVibrationOpenClicked(object sender, EventArgs e)
        {
            VibrationPopup.IsVisible = false;
            _vibrationService.StopVibration();

            if (_vibrationFile != null)
            {
                await ShowFilePreview(_vibrationFile);
                await _databaseService.UpdateReminderLogAsync(_vibrationFile.Id, "Opened");
                await _databaseService.RemoveFileReminderAsync(_vibrationFile.Id);
                FileNotificationService.CancelFileReminder(_vibrationFile);
                await LoadFilesFromDatabase();
                await UpdateStatistics();
            }
            _vibrationFile = null;
        }

        private async void OnVibrationSnoozeClicked(object sender, EventArgs e)
        {
            VibrationPopup.IsVisible = false;
            _vibrationService.StopVibration();

            if (_vibrationFile != null)
            {
                DateTime snoozeTime = DateTime.Now.AddMinutes(5);
                await _databaseService.SetFileReminderAsync(_vibrationFile.Id, snoozeTime);
                FileNotificationService.CancelFileReminder(_vibrationFile);
                FileNotificationService.ScheduleFileReminder(_vibrationFile, snoozeTime);
                await DisplayAlertAsync("Snoozed", $"Reminder set for {snoozeTime:HH:mm}", "OK");
                await LoadFilesFromDatabase();
                await UpdateStatistics();
            }
            _vibrationFile = null;
        }

        private async void OnVibrationStopClicked(object sender, EventArgs e)
        {
            VibrationPopup.IsVisible = false;
            _vibrationService.StopVibration();

            if (_vibrationFile != null)
            {
                bool openLater = await DisplayAlertAsync("Open File Later?",
                    "Do you want to open this file later?", "Yes", "No");

                if (!openLater)
                {
                    await _databaseService.UpdateReminderLogAsync(_vibrationFile.Id, "Dismissed");
                    await _databaseService.RemoveFileReminderAsync(_vibrationFile.Id);
                    FileNotificationService.CancelFileReminder(_vibrationFile);
                    await LoadFilesFromDatabase();
                    await UpdateStatistics();
                }
            }
            _vibrationFile = null;
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            _reminderCheckTimer?.Stop();
            _reminderCheckTimer?.Dispose();
            _vibrationService.StopVibration();
        }

        protected override void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public new event PropertyChangedEventHandler? PropertyChanged;
    }
}