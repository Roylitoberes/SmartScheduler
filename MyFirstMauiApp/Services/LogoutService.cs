using SmartScheduler.Services;
using SmartScheduler.Views;

namespace MyFirstMauiApp.Services
{
    public static class LogoutService
    {
        public static async Task Logout()
        {
            if (Application.Current?.Windows.Count > 0)
            {
                var page = Application.Current.Windows[0].Page as Page;
                if (page != null)
                {
                    bool confirm = await page.DisplayAlertAsync(
                        "Logout",
                        "Are you sure you want to logout?",
                        "Yes",
                        "No");

                    if (confirm)
                    {
                        App.FirebaseService?.Logout();

                        if (Application.Current?.Windows.Count > 0)
                        {
                            Application.Current.Windows[0].Page = new NavigationPage(new LoginPage());
                        }
                    }
                }
            }
        }
    }
}