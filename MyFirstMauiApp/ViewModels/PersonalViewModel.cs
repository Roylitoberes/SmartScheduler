using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Microsoft.Maui.ApplicationModel;
using MyFirstMauiApp.Models;
using MyFirstMauiApp.Services;

namespace MyFirstMauiApp.ViewModels
{
    public class PersonalViewModel : INotifyPropertyChanged
    {
        private readonly PersonalActivityService? _service;
        private readonly VibrationService? _vibrationService;
        private readonly bool _isFallbackMode;

        public ObservableCollection<PersonalActivity> Activities { get; set; } = new();
        public ObservableCollection<PersonalActivity> FilteredActivities { get; set; } = new();
        public ObservableCollection<string> Filters { get; set; } = new() { "All", "Today", "Completed", "Pending", "In Progress" };

        public int TotalActivitiesCount => Activities.Count;
        public int PendingCount => Activities.Count(a => a.Status != "Completed");
        public int CompletedCount => Activities.Count(a => a.Status == "Completed");

        private string _selectedFilter = "All";
        public string SelectedFilter
        {
            get => _selectedFilter;
            set
            {
                if (_selectedFilter != value)
                {
                    _selectedFilter = value;
                    OnPropertyChanged(nameof(SelectedFilter));
                    ApplyFilter();
                }
            }
        }

        private PersonalActivity? _newActivity;
        public PersonalActivity? NewActivity
        {
            get => _newActivity;
            set
            {
                if (_newActivity != value)
                {
                    _newActivity = value;
                    OnPropertyChanged(nameof(NewActivity));
                }
            }
        }

        private bool _isAddActivityVisible = false;
        public bool IsAddActivityVisible
        {
            get => _isAddActivityVisible;
            set
            {
                if (_isAddActivityVisible != value)
                {
                    _isAddActivityVisible = value;
                    OnPropertyChanged(nameof(IsAddActivityVisible));
                }
            }
        }

        public ObservableCollection<string> Categories { get; set; } = new() { "Exercise", "Self-Care", "Hobby", "Routine", "Personal Goal", "Other" };

        private PersonalActivity? _currentActivity;
        public PersonalActivity? CurrentActivity
        {
            get => _currentActivity;
            set
            {
                if (_currentActivity != value)
                {
                    _currentActivity = value;
                    OnPropertyChanged(nameof(CurrentActivity));
                    OnPropertyChanged(nameof(HasCurrentActivity));
                    UpdateCurrentActivityLabels();
                }
            }
        }

        public bool HasCurrentActivity => CurrentActivity != null;

        private string _currentTimer = "00:00:00";
        public string CurrentTimer
        {
            get => _currentTimer;
            set
            {
                if (_currentTimer != value)
                {
                    _currentTimer = value;
                    OnPropertyChanged(nameof(CurrentTimer));
                }
            }
        }

        private double _currentActivityProgress;
        public double CurrentActivityProgress
        {
            get => _currentActivityProgress;
            set
            {
                if (_currentActivityProgress != value)
                {
                    _currentActivityProgress = value;
                    OnPropertyChanged(nameof(CurrentActivityProgress));
                }
            }
        }

        private string _currentActivityProgressText = "0% Complete";
        public string CurrentActivityProgressText
        {
            get => _currentActivityProgressText;
            set
            {
                if (_currentActivityProgressText != value)
                {
                    _currentActivityProgressText = value;
                    OnPropertyChanged(nameof(CurrentActivityProgressText));
                }
            }
        }

        private string _currentActivityDurationLabel = string.Empty;
        public string CurrentActivityDurationLabel
        {
            get => _currentActivityDurationLabel;
            set
            {
                if (_currentActivityDurationLabel != value)
                {
                    _currentActivityDurationLabel = value;
                    OnPropertyChanged(nameof(CurrentActivityDurationLabel));
                }
            }
        }

        private string _currentActivityRemainingLabel = string.Empty;
        public string CurrentActivityRemainingLabel
        {
            get => _currentActivityRemainingLabel;
            set
            {
                if (_currentActivityRemainingLabel != value)
                {
                    _currentActivityRemainingLabel = value;
                    OnPropertyChanged(nameof(CurrentActivityRemainingLabel));
                }
            }
        }

        private string _currentTimerDetailLabel = string.Empty;
        public string CurrentTimerDetailLabel
        {
            get => _currentTimerDetailLabel;
            set
            {
                if (_currentTimerDetailLabel != value)
                {
                    _currentTimerDetailLabel = value;
                    OnPropertyChanged(nameof(CurrentTimerDetailLabel));
                }
            }
        }

        private int _elapsedSeconds = 0;
        private int _totalSeconds = 0;
        private bool _isTimerRunning = false;
        private System.Timers.Timer? _timer;

        public ICommand? ShowAddActivityCommand { get; private set; }
        public ICommand? CancelAddActivityCommand { get; private set; }
        public ICommand? SaveActivityCommand { get; private set; }
        public ICommand? CompleteCommand { get; private set; }
        public ICommand? ActivityTimerCommand { get; private set; }
        public ICommand? StartTimerCommand { get; private set; }
        public ICommand? PauseTimerCommand { get; private set; }
        public ICommand? StopTimerCommand { get; private set; }
        public ICommand? ResetTimerCommand { get; private set; }
        public ICommand? CompleteEarlyCommand { get; private set; }
        public ICommand? DeleteCommand { get; private set; }
        public ICommand? RestartActivityCommand { get; private set; }

        // Main constructor
        public PersonalViewModel() : this(false)
        {
        }

        // Constructor with fallback option
        public PersonalViewModel(bool isFallbackMode)
        {
            _isFallbackMode = isFallbackMode;

            try
            {
                if (!_isFallbackMode)
                {
                    // Try to initialize services
                    _service = new PersonalActivityService();
                    _vibrationService = new VibrationService();
                }

                _newActivity = new PersonalActivity
                {
                    Date = DateTime.Today,
                    Time = DateTime.Now.TimeOfDay,
                    SnoozeMinutes = 5,
                    RepeatOption = "None",
                    Reminder = false
                };

                InitializeCommands();

                // Add sample data for fallback mode
                if (_isFallbackMode)
                {
                    AddSampleData();
                }
                else
                {
                    // Load activities in background
                    Task.Run(async () => await LoadActivitiesAsync());
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error in PersonalViewModel constructor: {ex.Message}");
                System.Diagnostics.Debug.WriteLine($"Stack trace: {ex.StackTrace}");

                // Add sample data if everything fails
                AddSampleData();
            }
        }

        private void AddSampleData()
        {
            try
            {
                var sampleActivity = new PersonalActivity
                {
                    Id = Guid.NewGuid().ToString(),
                    Title = "Sample Activity",
                    Category = "Exercise",
                    Description = "This is a sample activity",
                    Date = DateTime.Today,
                    Time = DateTime.Now.TimeOfDay,
                    Duration = 30,
                    Status = "Pending",
                    ElapsedSeconds = 0
                };

                Activities.Add(sampleActivity);
                ApplyFilter();
                UpdateStatistics();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding sample data: {ex.Message}");
            }
        }

        private void InitializeCommands()
        {
            ShowAddActivityCommand = new Command(() => IsAddActivityVisible = true);

            CancelAddActivityCommand = new Command(() => {
                try
                {
                    _newActivity = new PersonalActivity
                    {
                        Date = DateTime.Today,
                        Time = DateTime.Now.TimeOfDay,
                        SnoozeMinutes = 5,
                        RepeatOption = "None",
                        Reminder = false
                    };
                    OnPropertyChanged(nameof(NewActivity));
                    IsAddActivityVisible = false;
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"Error in CancelAddActivityCommand: {ex.Message}");
                }
            });

            SaveActivityCommand = new Command(async () => {
                if (_newActivity == null || string.IsNullOrWhiteSpace(_newActivity.Title)) return;
                try
                {
                    _newActivity.NotificationId = new Random().Next(100000, 999999);
                    _newActivity.Status = "Pending";
                    _newActivity.ElapsedSeconds = 0;

                    if (_service != null && !_isFallbackMode)
                    {
                        await _service.AddActivityAsync(_newActivity);
                    }

                    if (_newActivity.Reminder && !_isFallbackMode)
                    {
                        PersonalNotificationService.Schedule(_newActivity);
                    }

                    Activities.Add(_newActivity);
                    ApplyFilter();

                    _newActivity = new PersonalActivity
                    {
                        Date = DateTime.Today,
                        Time = DateTime.Now.TimeOfDay,
                        SnoozeMinutes = 5,
                        RepeatOption = "None",
                        Reminder = false
                    };
                    OnPropertyChanged(nameof(NewActivity));
                    IsAddActivityVisible = false;

                    UpdateStatistics();
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"Error saving activity: {ex.Message}");
                    await Application.Current?.Windows.FirstOrDefault()?.Page?.DisplayAlertAsync("Error", "Failed to save activity. Please try again.", "OK");
                }
            });

            CompleteCommand = new Command<PersonalActivity>(async (act) => await CompleteActivityAsync(act));

            ActivityTimerCommand = new Command<PersonalActivity>((act) => {
                if (act == null) return;

                if (CurrentActivity == act && _isTimerRunning)
                {
                    PauseTimer();
                }
                else if (CurrentActivity == act && !_isTimerRunning)
                {
                    ResumeTimer();
                }
                else
                {
                    StartNewTimer(act);
                }
            });

            StartTimerCommand = new Command<PersonalActivity>(StartNewTimer);
            PauseTimerCommand = new Command(() => PauseTimer());

            StopTimerCommand = new Command(async () => {
                try
                {
                    StopTimer();
                    if (CurrentActivity != null && _service != null && !_isFallbackMode)
                    {
                        CurrentActivity.Status = "Pending";
                        CurrentActivity.ElapsedSeconds = 0;
                        await _service.UpdateActivityAsync(CurrentActivity);
                        UpdateStatistics();
                        ApplyFilter();
                    }
                    CurrentActivity = null;
                    _elapsedSeconds = 0;
                    CurrentTimer = "00:00:00";
                    CurrentActivityProgress = 0;
                    CurrentActivityProgressText = "0% Complete";
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"Error in StopTimerCommand: {ex.Message}");
                }
            });

            ResetTimerCommand = new Command(() => {
                if (CurrentActivity == null) return;
                _elapsedSeconds = 0;
                _totalSeconds = CurrentActivity.Duration * 60;
                UpdateTimerDisplay();
                UpdateProgress();
            });

            CompleteEarlyCommand = new Command(async () => {
                if (CurrentActivity != null)
                {
                    await CompleteActivityAsync(CurrentActivity);
                    StopTimer();
                    CurrentActivity = null;
                }
            });

            DeleteCommand = new Command<PersonalActivity>(async (act) => {
                if (act == null) return;
                try
                {
                    if (CurrentActivity == act)
                    {
                        StopTimer();
                        CurrentActivity = null;
                    }

                    if (!_isFallbackMode)
                    {
                        PersonalNotificationService.Cancel(act);
                        if (_service != null)
                        {
                            await _service.DeleteActivityAsync(act.Id);
                        }
                    }
                    Activities.Remove(act);

                    UpdateStatistics();
                    ApplyFilter();
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"Error deleting activity: {ex.Message}");
                }
            });

            RestartActivityCommand = new Command<PersonalActivity>(async (act) => {
                if (act == null) return;
                try
                {
                    act.Status = "Pending";
                    act.ElapsedSeconds = 0;
                    if (_service != null && !_isFallbackMode)
                    {
                        await _service.UpdateActivityAsync(act);
                    }
                    UpdateStatistics();
                    ApplyFilter();
                    StartNewTimer(act);
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"Error in RestartActivityCommand: {ex.Message}");
                }
            });
        }

        private async Task CompleteActivityAsync(PersonalActivity act)
        {
            if (act == null) return;

            try
            {
                if (CurrentActivity == act)
                {
                    StopTimer();
                    CurrentActivity = null;
                }

                _vibrationService?.StopVibration();

                act.Status = "Completed";
                act.CompletedAt = DateTime.Now;
                act.ElapsedSeconds = act.Duration * 60;

                if (!_isFallbackMode)
                {
                    PersonalNotificationService.Cancel(act);
                    if (_service != null)
                    {
                        await _service.UpdateActivityAsync(act);
                    }
                }

                UpdateStatistics();
                ApplyFilter();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error completing activity: {ex.Message}");
            }
        }

        private void StartNewTimer(PersonalActivity act)
        {
            try
            {
                if (act == null || act.Duration <= 0) return;

                if (CurrentActivity != null && _timer != null)
                {
                    StopTimer();
                }

                CurrentActivity = act;
                _elapsedSeconds = act.ElapsedSeconds;
                _totalSeconds = act.Duration * 60;
                _isTimerRunning = true;

                _timer?.Stop();
                _timer?.Dispose();

                _timer = new System.Timers.Timer(1000);
                _timer.Elapsed += OnTimerElapsed;
                _timer.Start();

                UpdateTimerDisplay();
                UpdateProgress();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error starting timer: {ex.Message}");
            }
        }

        private void PauseTimer()
        {
            try
            {
                _isTimerRunning = false;
                _timer?.Stop();
                if (CurrentActivity != null && _service != null && !_isFallbackMode)
                {
                    CurrentActivity.Status = "In Progress";
                    CurrentActivity.ElapsedSeconds = _elapsedSeconds;
                    _ = _service.UpdateActivityAsync(CurrentActivity);
                    ApplyFilter();
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error pausing timer: {ex.Message}");
            }
        }

        private void ResumeTimer()
        {
            try
            {
                if (CurrentActivity == null) return;
                _isTimerRunning = true;
                _timer?.Start();
                CurrentActivity.Status = "In Progress";
                if (_service != null && !_isFallbackMode)
                {
                    _ = _service.UpdateActivityAsync(CurrentActivity);
                }
                ApplyFilter();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error resuming timer: {ex.Message}");
            }
        }

        private void StopTimer()
        {
            try
            {
                _isTimerRunning = false;
                _timer?.Stop();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error stopping timer: {ex.Message}");
            }
        }

        private void OnTimerElapsed(object? sender, System.Timers.ElapsedEventArgs e)
        {
            if (!_isTimerRunning) return;

            _elapsedSeconds++;

            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
            {
                try
                {
                    UpdateTimerDisplay();
                    UpdateProgress();

                    if (CurrentActivity != null && _service != null && !_isFallbackMode)
                    {
                        CurrentActivity.ElapsedSeconds = _elapsedSeconds;
                        CurrentActivity.Status = "In Progress";
                        _ = _service.UpdateActivityAsync(CurrentActivity);
                        ApplyFilter();
                    }

                    if (_elapsedSeconds >= _totalSeconds && _totalSeconds > 0)
                    {
                        _isTimerRunning = false;
                        _timer?.Stop();

                        _vibrationService?.StartContinuousVibration();

                        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(async () =>
                        {
                            try
                            {
                                var currentPage = Application.Current?.Windows.FirstOrDefault()?.Page;
                                if (currentPage != null)
                                {
                                    await currentPage.DisplayAlertAsync(
                                        "Activity Finished!",
                                        $"Great job! You've completed {CurrentActivity?.Title}. Please click Complete to save your progress.",
                                        "OK"
                                    );
                                }
                                CurrentTimer = "00:00:00";
                            }
                            catch (Exception ex)
                            {
                                System.Diagnostics.Debug.WriteLine($"Error showing alert: {ex.Message}");
                            }
                        });
                    }
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"Error in timer elapsed: {ex.Message}");
                }
            });
        }

        private void UpdateTimerDisplay()
        {
            int remaining = _totalSeconds - _elapsedSeconds;
            if (remaining < 0) remaining = 0;

            CurrentTimer = TimeSpan.FromSeconds(remaining).ToString(@"hh\:mm\:ss");

            if (CurrentActivity != null)
            {
                var elapsed = TimeSpan.FromSeconds(_elapsedSeconds);
                var total = TimeSpan.FromSeconds(_totalSeconds);
                CurrentTimerDetailLabel = $"Progress: {CurrentActivityProgress:P0} ({elapsed:mm\\:ss} elapsed / {total:mm\\:ss} total)";
                UpdateCurrentActivityLabels();
            }
        }

        private void UpdateProgress()
        {
            if (_totalSeconds > 0)
            {
                CurrentActivityProgress = (double)_elapsedSeconds / _totalSeconds;
                CurrentActivityProgressText = $"{CurrentActivityProgress:P0} Complete";
            }
            else
            {
                CurrentActivityProgress = 0;
                CurrentActivityProgressText = "0% Complete";
            }
        }

        private void UpdateCurrentActivityLabels()
        {
            if (CurrentActivity != null)
            {
                CurrentActivityDurationLabel = $"Duration: {CurrentActivity.Duration} min";
                var remaining = _totalSeconds - _elapsedSeconds;
                CurrentActivityRemainingLabel = remaining > 0
                    ? $"Time Remaining: {TimeSpan.FromSeconds(remaining):mm\\:ss}"
                    : "Time Remaining: 00:00";
            }
        }

        private void ApplyFilter()
        {
            try
            {
                var filtered = SelectedFilter switch
                {
                    "Today" => Activities.Where(a => a.Date.Date == DateTime.Today),
                    "Completed" => Activities.Where(a => a.Status == "Completed"),
                    "Pending" => Activities.Where(a => a.Status != "Completed"),
                    "In Progress" => Activities.Where(a => a.Status == "In Progress"),
                    _ => Activities
                };

                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    FilteredActivities.Clear();
                    foreach (var activity in filtered.OrderByDescending(a => a.Date).ThenByDescending(a => a.Time))
                    {
                        FilteredActivities.Add(activity);
                    }
                });
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error applying filter: {ex.Message}");
            }
        }

        private void UpdateStatistics()
        {
            try
            {
                OnPropertyChanged(nameof(TotalActivitiesCount));
                OnPropertyChanged(nameof(PendingCount));
                OnPropertyChanged(nameof(CompletedCount));
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating statistics: {ex.Message}");
            }
        }

        public async Task LoadActivitiesAsync()
        {
            try
            {
                if (_service == null || _isFallbackMode) return;

                var acts = await _service.GetActivitiesAsync();
                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    try
                    {
                        Activities.Clear();
                        foreach (var a in acts.OrderByDescending(a => a.Date).ThenByDescending(a => a.Time))
                        {
                            Activities.Add(a);
                            if (a.Reminder && a.Status != "Completed")
                            {
                                PersonalNotificationService.Schedule(a);
                            }
                        }
                        ApplyFilter();
                        UpdateStatistics();
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine($"Error processing loaded activities: {ex.Message}");
                    }
                });
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error loading activities: {ex.Message}");
                // Add sample data if loading fails
                if (Activities.Count == 0)
                {
                    AddSampleData();
                }
            }
        }

        public async Task UpdateActivityAsync(PersonalActivity activity)
        {
            try
            {
                if (_service == null || _isFallbackMode) return;

                PersonalNotificationService.UpdateNotification(activity);
                await _service.UpdateActivityAsync(activity);
                UpdateStatistics();
                ApplyFilter();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating activity: {ex.Message}");
            }
        }

        public void Cleanup()
        {
            try
            {
                _timer?.Stop();
                _timer?.Dispose();
                _timer = null;
                _vibrationService?.StopVibration();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error during cleanup: {ex.Message}");
            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}