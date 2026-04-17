using SmartScheduler.Services;
using MyFirstMauiApp;

namespace SmartScheduler.Views
{
    public partial class RegisterPage : ContentPage
    {
        private readonly FirebaseService? _firebaseService;
        private readonly EmailService? _emailService;
        private string _userEmail = string.Empty;

        public RegisterPage()
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

        private async void OnSendOTPClicked(object? sender, EventArgs e)
        {
            if (EmailEntry == null || string.IsNullOrWhiteSpace(EmailEntry.Text))
            {
                await this.DisplayAlertAsync("Error", "Please enter your email", "OK");
                return;
            }

            if (!EmailEntry.Text.Contains("@"))
            {
                await this.DisplayAlertAsync("Error", "Please enter a valid email", "OK");
                return;
            }

            try
            {
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;
                SendOTPButton.IsEnabled = false;

                _userEmail = EmailEntry.Text;

                var result = await _emailService!.SendOTPAsync(_userEmail);

                if (result.success)
                {
                    OTPContainer.IsVisible = true;
                    RegisterButton.IsVisible = true;
                    await this.DisplayAlertAsync("Success", $"OTP sent to {_userEmail}. Please check your inbox.", "OK");
                }
                else
                {
                    await this.DisplayAlertAsync("Error", result.message, "OK");
                }
            }
            catch (Exception ex)
            {
                await this.DisplayAlertAsync("Error", $"Failed to send OTP: {ex.Message}", "OK");
            }
            finally
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
                SendOTPButton.IsEnabled = true;
            }
        }

        private async void OnRegisterClicked(object? sender, EventArgs e)
        {
            if (UsernameEntry == null || string.IsNullOrWhiteSpace(UsernameEntry.Text))
            {
                await this.DisplayAlertAsync("Error", "Please enter a username", "OK");
                return;
            }

            if (PasswordEntry == null || string.IsNullOrWhiteSpace(PasswordEntry.Text))
            {
                await this.DisplayAlertAsync("Error", "Please enter a password", "OK");
                return;
            }

            if (PasswordEntry.Text != ConfirmPasswordEntry?.Text)
            {
                await this.DisplayAlertAsync("Error", "Passwords do not match", "OK");
                return;
            }

            if (OTPEntry == null || string.IsNullOrWhiteSpace(OTPEntry.Text) || OTPEntry.Text.Length != 6)
            {
                await this.DisplayAlertAsync("Error", "Please enter a valid 6-digit OTP", "OK");
                return;
            }

            if (!_emailService!.VerifyOTP(_userEmail, OTPEntry.Text))
            {
                await this.DisplayAlertAsync("Error", "Invalid or expired OTP", "OK");
                return;
            }

            try
            {
                LoadingIndicator.IsRunning = true;
                LoadingIndicator.IsVisible = true;
                RegisterButton.IsEnabled = false;

                var result = await _firebaseService!.RegisterWithEmail(
                    _userEmail,
                    PasswordEntry.Text,
                    UsernameEntry.Text);

                if (result.success)
                {
                    // IMPORTANT: Set flag for new user to show onboarding
                    Preferences.Set("show_onboarding_for_new_user", true);

                    await this.DisplayAlertAsync("Success", "Registration successful!", "OK");

                    // Navigate to Loading Page which will check the flag
                    if (Application.Current?.Windows.Count > 0)
                    {
                        Application.Current.Windows[0].Page = new NavigationPage(new LoadingPage());
                    }
                }
                else
                {
                    await this.DisplayAlertAsync("Error", result.message, "OK");
                }
            }
            catch (Exception ex)
            {
                await this.DisplayAlertAsync("Error", $"Registration failed: {ex.Message}", "OK");
            }
            finally
            {
                LoadingIndicator.IsRunning = false;
                LoadingIndicator.IsVisible = false;
                RegisterButton.IsEnabled = true;
            }
        }

        private async void OnLoginTapped(object? sender, TappedEventArgs e)
        {
            await Navigation.PopAsync();
        }

        private async void OnBackTapped(object? sender, TappedEventArgs e)
        {
            await Navigation.PopAsync();
        }
    }
}