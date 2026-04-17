using MyFirstMauiApp.Services;
using MyFirstMauiApp.ViewModels;
using SmartScheduler.Services;
using SmartScheduler.Views;

namespace MyFirstMauiApp;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();
        BindingContext = new AppShellViewModels();

        Task.Run(async () =>
        {
            if (App.FirebaseService?.CurrentUser != null && App.ProfilePictureService != null)
            {
                await App.ProfilePictureService.LoadUserProfileOnLogin(App.FirebaseService.CurrentUser.Id!);

                var viewModel = BindingContext as AppShellViewModels;
                if (viewModel != null)
                {
                    var profilePic = await App.ProfilePictureService.GetProfilePicturePathAsync(App.FirebaseService.CurrentUser.Id!);
                    viewModel.UserProfilePicture = profilePic;
                }
            }
        });
    }

    private async void OnEditProfileClicked(object? sender, EventArgs e)
    {
        await Navigation.PushAsync(new EditProfilePage());
    }

    private async void OnLogoutClicked(object? sender, EventArgs e)
    {
        bool confirm = await DisplayAlertAsync("Logout", "Are you sure you want to logout?", "Yes", "No");
        if (confirm)
        {
            // ========== ADDED: Clear the current user from DatabaseService ==========
            App.ClearCurrentUser();

            // Sign out from Firebase
            App.FirebaseService?.Logout();

            if (Application.Current?.Windows.Count > 0)
            {
                Application.Current.Windows[0].Page = new NavigationPage(new LoginPage());
            }
        }
    }
}