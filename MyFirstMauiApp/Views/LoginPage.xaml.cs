using SmartScheduler.Services;
using MyFirstMauiApp;

namespace SmartScheduler.Views
{
    public partial class LoginPage : ContentPage
    {
        private readonly FirebaseService? _firebaseService;
        private readonly EmailService? _emailService;
        private bool _isProcessingForgotPassword = false;

        public LoginPage()
        {
            InitializeComponent();
            _firebaseService = App.FirebaseService;
            _emailService = App.EmailService;
        }

        private void OnTogglePasswordVisibility(object? sender, EventArgs e)
        {
            if (PasswordEntry != null)
            {
                PasswordEntry.IsPassword = !PasswordEntry.IsPassword;
                if (TogglePasswordButton != null)
                {
                    TogglePasswordButton.Text = PasswordEntry.IsPassword ? "👁️" : "🙈";
                }
            }
        }

        private async void OnForgotPasswordTapped(object? sender, TappedEventArgs e)
        {
            if (_isProcessingForgotPassword)
            {
                await this.DisplayAlertAsync(
                    "⏳ Please Wait",
                    "Your OTP is already being sent. Please wait a moment before trying again.",
                    "OK");
                return;
            }

            if (UsernameEntry == null || string.IsNullOrWhiteSpace(UsernameEntry.Text))
            {
                await this.DisplayAlertAsync("Error", "Please enter your email address", "OK");
                return;
            }

            string email = UsernameEntry.Text.Trim();
            if (!email.Contains("@"))
            {
                await this.DisplayAlertAsync("Error", "Please enter a valid email address", "OK");
                return;
            }

            try
            {
                _isProcessingForgotPassword = true;
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;

                var result = await _emailService!.SendOTPAsync(email);

                if (result.success)
                {
                    Preferences.Set("reset_email", email);

                    LoadingIndicator.IsRunning = false;
                    LoadingIndicator.IsVisible = false;

                    await this.DisplayAlertAsync(
                        "📧 OTP Sent",
                        $"We've sent a 6-digit verification code to:\n\n{email}\n\nPlease check your inbox and enter the code to reset your password.",
                        "OK");

                    await Navigation.PushAsync(new ResetPasswordPage());
                }
                else
                {
                    LoadingIndicator.IsRunning = false;
                    LoadingIndicator.IsVisible = false;
                    await this.DisplayAlertAsync("Error", result.message, "OK");
                }
            }
            catch (Exception ex)
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
                await this.DisplayAlertAsync("Error", $"Failed to send reset code: {ex.Message}", "OK");
            }
            finally
            {
                _isProcessingForgotPassword = false;
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
            }
        }

        private async void OnLoginClicked(object? sender, EventArgs e)
        {
            if (UsernameEntry == null || string.IsNullOrWhiteSpace(UsernameEntry.Text))
            {
                await this.DisplayAlertAsync("Error", "Please enter your email", "OK");
                return;
            }

            if (PasswordEntry == null || string.IsNullOrWhiteSpace(PasswordEntry.Text))
            {
                await this.DisplayAlertAsync("Error", "Please enter your password", "OK");
                return;
            }

            try
            {
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;
                LoginButton.IsEnabled = false;

                string email = UsernameEntry.Text.Trim();

                if (!email.Contains("@"))
                {
                    await this.DisplayAlertAsync("Error", "Please enter a valid email address", "OK");
                    return;
                }

                var result = await _firebaseService!.LoginWithEmail(email, PasswordEntry.Text);

                if (result.success)
                {
                    // For existing users, go directly to AppShell (no onboarding)
                    if (Application.Current?.Windows.Count > 0)
                    {
                        Application.Current.Windows[0].Page = new AppShell();
                    }
                }
                else
                {
                    await this.DisplayAlertAsync("Error", result.message, "OK");
                }
            }
            catch (Exception ex)
            {
                await this.DisplayAlertAsync("Error", $"Login failed: {ex.Message}", "OK");
            }
            finally
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
                LoginButton.IsEnabled = true;
            }
        }

        private async void OnRegisterTapped(object? sender, TappedEventArgs e)
        {
            await Navigation.PushAsync(new RegisterPage());
        }
    }
}