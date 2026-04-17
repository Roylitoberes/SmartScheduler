using Microsoft.Maui.Controls;
using System;
using System.Threading.Tasks;

namespace MyFirstMauiApp
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private async void OnLoginClicked(object sender, EventArgs e)
        {
            string username = UsernameEntry?.Text?.Trim() ?? string.Empty;
            string password = PasswordEntry?.Text ?? string.Empty;

            // Validate username
            if (string.IsNullOrWhiteSpace(username))
            {
                await ShowAlertAsync("Validation Error", "Please enter your username", "OK");
                return;
            }

            // Validate password
            if (string.IsNullOrWhiteSpace(password))
            {
                await ShowAlertAsync("Validation Error", "Please enter your password", "OK");
                return;
            }

            // Check demo credentials
            if (username.Equals("demo", StringComparison.OrdinalIgnoreCase) && password == "demo123")
            {
                // Successful login - navigate to HomePage
                // For single-window MAUI apps (recommended)
                var homePage = new Home();
                var navPage = new NavigationPage(homePage);
                if (Application.Current.Windows.Count > 0)
                {
                    Application.Current.Windows[0].Page = navPage;
                }
            }
            else
            {
                // Failed login
                await ShowAlertAsync("Login Failed", "Invalid username or password", "Try Again");

                // Clear password field for security
                if (PasswordEntry != null)
                    PasswordEntry.Text = string.Empty;

                // Optional: focus username field
                UsernameEntry?.Focus();
            }
        }

        private async void OnForgotPasswordTapped(object sender, TappedEventArgs e)
        {
            await ShowAlertAsync("Forgot Password", "Please contact support to reset your password.", "OK");
        }

        private async void OnSignUpTapped(object sender, TappedEventArgs e)
        {
            await ShowAlertAsync("Sign Up", "Sign up feature coming soon!", "OK");
        }

        // Updated alert helper using DisplayAlertAsync
        private Task ShowAlertAsync(string title, string message, string cancel)
        {
            return this.DisplayAlertAsync(title, message, cancel);
        }
    }
}