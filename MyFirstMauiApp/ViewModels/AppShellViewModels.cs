using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using MyFirstMauiApp.Services;
using SmartScheduler.Services;
using MyUser = MyFirstMauiApp.Models.User;

namespace MyFirstMauiApp.ViewModels
{
    public class AppShellViewModels : INotifyPropertyChanged
    {
        private readonly FirebaseService? _firebaseService;
        private readonly ProfilePictureService? _profileService;
        private string? _userDisplayName;
        private string? _userEmail;
        private string? _userProfilePicture;

        public event PropertyChangedEventHandler? PropertyChanged;

        public string? UserDisplayName
        {
            get => _userDisplayName;
            set
            {
                if (_userDisplayName != value)
                {
                    _userDisplayName = value;
                    OnPropertyChanged(nameof(UserDisplayName));
                }
            }
        }

        public string? UserEmail
        {
            get => _userEmail;
            set
            {
                if (_userEmail != value)
                {
                    _userEmail = value;
                    OnPropertyChanged(nameof(UserEmail));
                }
            }
        }

        public string? UserProfilePicture
        {
            get => _userProfilePicture;
            set
            {
                if (_userProfilePicture != value)
                {
                    _userProfilePicture = value;
                    OnPropertyChanged(nameof(UserProfilePicture));
                }
            }
        }

        public ICommand LogoutCommand { get; }

        public AppShellViewModels()
        {
            _firebaseService = App.FirebaseService;
            _profileService = App.ProfilePictureService;

            if (_firebaseService?.CurrentUser != null)
            {
                UserDisplayName = _firebaseService.CurrentUser.DisplayName;
                UserEmail = _firebaseService.CurrentUser.Email;

                LoadProfilePictureFromLocal();
            }

            LogoutCommand = new Command(async () => await ExecuteLogout());
        }

        private async void LoadProfilePictureFromLocal()
        {
            try
            {
                if (_firebaseService?.CurrentUser != null && _profileService != null)
                {
                    var userId = _firebaseService.CurrentUser.Id!;
                    var picturePath = await _profileService.GetProfilePicturePathAsync(userId);

                    Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                    {
                        UserProfilePicture = picturePath;
                    });
                }
                else
                {
                    UserProfilePicture = "default_avatar.png";
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error loading profile picture: {ex.Message}");
                UserProfilePicture = "default_avatar.png";
            }
        }

        private async Task ExecuteLogout()
        {
            await LogoutService.Logout();
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}