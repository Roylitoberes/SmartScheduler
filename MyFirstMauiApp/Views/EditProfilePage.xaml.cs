using Firebase.Database.Query;
using MyFirstMauiApp;
using MyFirstMauiApp.Services;
using MyFirstMauiApp.ViewModels;
using SmartScheduler.Services;

namespace SmartScheduler.Views
{
    public partial class EditProfilePage : ContentPage
    {
        private readonly ProfilePictureService _profileService;
        private readonly FirebaseService _firebaseService;
        private readonly LocalDatabaseService _localDb;
        private string _currentUserId;

        public EditProfilePage()
        {
            InitializeComponent();
            _profileService = App.ProfilePictureService!;
            _firebaseService = App.FirebaseService!;
            _localDb = new LocalDatabaseService();
            _currentUserId = _firebaseService.CurrentUser?.Id ?? "";

            LoadUserInfo();
            LoadProfilePicture();
        }

        private void LoadUserInfo()
        {
            var user = _firebaseService.CurrentUser;
            if (user != null)
            {
                UsernameLabel.Text = user.Username;
                EmailLabel.Text = user.Email;
                UsernameEntry.Text = user.Username;
            }
        }

        private async void LoadProfilePicture()
        {
            try
            {
                var picturePath = await _profileService.GetProfilePicturePathAsync(_currentUserId);
                if (!string.IsNullOrEmpty(picturePath) && File.Exists(picturePath) && picturePath != "default_avatar.png")
                {
                    ProfileImage.Source = ImageSource.FromFile(picturePath);
                    RemoveButton.IsVisible = true;
                }
                else
                {
                    ProfileImage.Source = "default_avatar.png";
                    RemoveButton.IsVisible = false;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlertAsync("Error", $"Failed to load picture: {ex.Message}", "OK");
            }
        }

        private void OnEditUsernameClicked(object sender, EventArgs e)
        {
            // Hide display mode, show edit mode
            DisplayModeGrid.IsVisible = false;
            EditModeGrid.IsVisible = true;

            // Set focus to entry
            UsernameEntry.Focus();
        }

        private async void OnSaveUsernameClicked(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(UsernameEntry.Text))
            {
                await DisplayAlertAsync("Error", "Username cannot be empty", "OK");
                return;
            }

            try
            {
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;

                var newUsername = UsernameEntry.Text.Trim();
                var currentUser = _firebaseService.CurrentUser;

                if (currentUser != null && currentUser.Username != newUsername)
                {
                    // Update local SQLite
                    await _localDb.UpdateUsernameAsync(_currentUserId, newUsername);

                    // Create updated user object
                    var updatedUser = new
                    {
                        Id = currentUser.Id,
                        Email = currentUser.Email,
                        Username = newUsername,
                        DisplayName = newUsername,
                        ProfilePicture = currentUser.ProfilePicture ?? "default_avatar.png"
                    };

                    // Update Firebase Realtime Database
                    var authDb = _firebaseService.GetAuthDatabase();
                    await authDb
                        .Child("Users")
                        .Child(_currentUserId)
                        .Child("Profile")
                        .PutAsync(updatedUser);

                    // Update current user object
                    currentUser.Username = newUsername;
                    currentUser.DisplayName = newUsername;

                    // Update UI
                    UsernameLabel.Text = newUsername;

                    // Update sidebar
                    var shell = Application.Current?.Windows[0].Page as AppShell;
                    if (shell?.BindingContext is AppShellViewModels viewModel)
                    {
                        viewModel.UserDisplayName = newUsername;
                    }

                    // Refresh the dashboard if it's currently visible
                    var existingPage = Application.Current?.Windows[0]?.Page?.Navigation?.NavigationStack
                        .FirstOrDefault(p => p is Home);
                    if (existingPage is Home homePage)
                    {
                        homePage.UpdateWelcomeMessage();
                    }

                    await DisplayAlertAsync("Success", "Username updated successfully", "OK");
                }

                // Exit edit mode
                DisplayModeGrid.IsVisible = true;
                EditModeGrid.IsVisible = false;
            }
            catch (Exception ex)
            {
                await DisplayAlertAsync("Error", $"Failed to update username: {ex.Message}", "OK");
            }
            finally
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
            }
        }

        private void OnCancelUsernameClicked(object sender, EventArgs e)
        {
            // Restore original username
            var user = _firebaseService.CurrentUser;
            if (user != null)
            {
                UsernameEntry.Text = user.Username;
            }

            // Exit edit mode
            DisplayModeGrid.IsVisible = true;
            EditModeGrid.IsVisible = false;
        }

        private async void OnTakePhotoClicked(object sender, EventArgs e)
        {
            try
            {
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;

                var result = await _profileService.TakePhotoAndSaveAsync(_currentUserId);

                if (result.success)
                {
                    await DisplayAlertAsync("Success", result.message, "OK");
                    LoadProfilePicture();

                    var shell = Application.Current?.Windows[0].Page as AppShell;
                    if (shell?.BindingContext is AppShellViewModels viewModel)
                    {
                        viewModel.UserProfilePicture = result.localPath;
                    }
                }
                else
                {
                    await DisplayAlertAsync("Error", result.message, "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlertAsync("Error", ex.Message, "OK");
            }
            finally
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
            }
        }

        private async void OnPickImageClicked(object sender, EventArgs e)
        {
            try
            {
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;

                var result = await _profileService.PickImageAndSaveAsync(_currentUserId);

                if (result.success)
                {
                    await DisplayAlertAsync("Success", result.message, "OK");
                    LoadProfilePicture();

                    var shell = Application.Current?.Windows[0].Page as AppShell;
                    if (shell?.BindingContext is AppShellViewModels viewModel)
                    {
                        viewModel.UserProfilePicture = result.localPath;
                    }
                }
                else
                {
                    await DisplayAlertAsync("Error", result.message, "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlertAsync("Error", ex.Message, "OK");
            }
            finally
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
            }
        }

        private async void OnRemovePictureClicked(object sender, EventArgs e)
        {
            bool confirm = await DisplayAlertAsync("Remove Picture",
                "Are you sure you want to remove your profile picture?",
                "Yes", "No");

            if (confirm)
            {
                try
                {
                    LoadingIndicator.IsRunning = true;
                    LoadingIndicator.IsVisible = true;

                    var result = await _profileService.DeleteProfilePictureAsync(_currentUserId);

                    if (result)
                    {
                        ProfileImage.Source = "default_avatar.png";
                        RemoveButton.IsVisible = false;
                        await DisplayAlertAsync("Success", "Profile picture removed", "OK");

                        var shell = Application.Current?.Windows[0].Page as AppShell;
                        if (shell?.BindingContext is AppShellViewModels viewModel)
                        {
                            viewModel.UserProfilePicture = "default_avatar.png";
                        }
                    }
                }
                catch (Exception ex)
                {
                    await DisplayAlertAsync("Error", ex.Message, "OK");
                }
                finally
                {
                    LoadingIndicator.IsRunning = false;
                    LoadingIndicator.IsVisible = false;
                }
            }
        }
    }
}