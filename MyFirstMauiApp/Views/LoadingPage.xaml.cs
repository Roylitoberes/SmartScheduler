using SmartScheduler.Services;
using MyFirstMauiApp;
using System.Diagnostics;

namespace SmartScheduler.Views
{
    public partial class LoadingPage : ContentPage
    {
        private int _loadingStep = 0;
        private readonly List<string> _loadingMessages = new()
        {
            "Loading...",
            "Preparing your workspace...",
            "Syncing your data...",
            "Almost ready...",
            "Welcome to Smart Scheduler!"
        };

        public LoadingPage()
        {
            InitializeComponent();
            StartLoadingAnimation();
        }

        private async void StartLoadingAnimation()
        {
            // Animate loading text every 1.5 seconds
            while (_loadingStep < _loadingMessages.Count - 1)
            {
                await Task.Delay(1500);
                _loadingStep++;
                LoadingText.Text = _loadingMessages[_loadingStep];
            }

            // Wait a moment then navigate
            await Task.Delay(1000);

            // Check if user is logged in
            bool isLoggedIn = App.FirebaseService?.IsUserLoggedIn() ?? false;

            if (Application.Current?.Windows.Count > 0)
            {
                if (!isLoggedIn)
                {
                    // Not logged in - go to Login Page
                    Application.Current.Windows[0].Page = new NavigationPage(new LoginPage());
                }
                else
                {
                    // Logged in - check if this is a new user
                    bool isNewUser = Preferences.Get("show_onboarding_for_new_user", false);

                    if (isNewUser)
                    {
                        // Show onboarding for new user
                        Preferences.Set("show_onboarding_for_new_user", false);
                        Preferences.Set("has_seen_onboarding", true);
                        Application.Current.Windows[0].Page = new OnboardingPage();
                    }
                    else
                    {
                        // Regular login - go directly to app
                        Application.Current.Windows[0].Page = new AppShell();
                    }
                }
            }
        }
    }
}