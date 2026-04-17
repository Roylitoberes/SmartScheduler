using SmartScheduler.Services;
using MyFirstMauiApp;

namespace SmartScheduler.Views
{
    public partial class ResetPasswordPage : ContentPage
    {
        private readonly FirebaseService? _firebaseService;
        private readonly EmailService? _emailService;
        private string _resetEmail = string.Empty;

        public ResetPasswordPage()
        {
            InitializeComponent();
            _firebaseService = App.FirebaseService;
            _emailService = App.EmailService;
            _resetEmail = Preferences.Get("reset_email", "");
        }

        private void OnTogglePasswordVisibility(object? sender, EventArgs e)
        {
            if (NewPasswordEntry != null)
            {
                NewPasswordEntry.IsPassword = !NewPasswordEntry.IsPassword;
                if (TogglePasswordButton != null)
                {
                    TogglePasswordButton.Text = NewPasswordEntry.IsPassword ? "👁️" : "🙈";
                }
            }
        }

        private void OnToggleConfirmPasswordVisibility(object? sender, EventArgs e)
        {
            if (ConfirmPasswordEntry != null)
            {
                ConfirmPasswordEntry.IsPassword = !ConfirmPasswordEntry.IsPassword;
                if (ToggleConfirmPasswordButton != null)
                {
                    ToggleConfirmPasswordButton.Text = ConfirmPasswordEntry.IsPassword ? "👁️" : "🙈";
                }
            }
        }

        private async void OnResetPasswordClicked(object? sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(OTPEntry?.Text) || OTPEntry.Text.Length != 6)
            {
                await DisplayAlertAsync("Error", "Please enter a valid 6-digit OTP", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(NewPasswordEntry?.Text))
            {
                await DisplayAlertAsync("Error", "Please enter a new password", "OK");
                return;
            }

            if (NewPasswordEntry.Text != ConfirmPasswordEntry?.Text)
            {
                await DisplayAlertAsync("Error", "Passwords do not match", "OK");
                return;
            }

            if (NewPasswordEntry.Text.Length < 6)
            {
                await DisplayAlertAsync("Error", "Password must be at least 6 characters", "OK");
                return;
            }

            try
            {
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;

                if (!_emailService!.VerifyOTP(_resetEmail, OTPEntry.Text))
                {
                    await DisplayAlertAsync("Error", "Invalid or expired OTP", "OK");
                    return;
                }

                var user = _firebaseService?.CurrentUser;
                if (user != null && user.Email == _resetEmail)
                {
                    await _firebaseService!.UpdateUserPasswordAsync(user.Id, NewPasswordEntry.Text);

                    await DisplayAlertAsync(
                        "✅ Password Reset Successful",
                        $"Your password has been reset successfully!\n\nYou can now log in with your new password.",
                        "OK");
                }
                else
                {
                    await DisplayAlertAsync("Error", "User not found. Please try again.", "OK");
                    return;
                }

                Preferences.Remove("reset_email");

                // FIXED: Navigate to Login Page after password reset
                if (Application.Current?.Windows.Count > 0)
                {
                    Application.Current.Windows[0].Page = new NavigationPage(new LoginPage());
                }
            }
            catch (Exception ex)
            {
                await DisplayAlertAsync("Error", $"Failed to reset password: {ex.Message}", "OK");
            }
            finally
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
            }
        }

        private async void OnBackToLoginTapped(object? sender, TappedEventArgs e)
        {
            // FIXED: Navigate to Login Page
            if (Application.Current?.Windows.Count > 0)
            {
                Application.Current.Windows[0].Page = new NavigationPage(new LoginPage());
            }
        }
    }
}