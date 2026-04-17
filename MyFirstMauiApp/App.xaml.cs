using SmartScheduler.Services;
using SmartScheduler.Views;
using Plugin.LocalNotification;
using Microsoft.Maui.ApplicationModel;
using MyFirstMauiApp.Services;

namespace MyFirstMauiApp
{
    public partial class App : Application
    {
        public static FirebaseService? FirebaseService { get; private set; }
        public static EmailService? EmailService { get; private set; }
        public static DatabaseService? DatabaseService { get; private set; }
        public static ProfilePictureService? ProfilePictureService { get; private set; }

        public App()
        {
            InitializeComponent();
            FirebaseService = new FirebaseService();
            EmailService = new EmailService();
            DatabaseService = new DatabaseService();
            ProfilePictureService = new ProfilePictureService(FirebaseService);
            _ = DatabaseService.InitializeAsync();
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            var window = new Window();

            // UPDATED: Always show Loading Page first
            window.Page = new NavigationPage(new LoadingPage());

            return window;
        }

        public static void ClearCurrentUser()
        {
            DatabaseService?.ClearCurrentUser();
        }

        protected override async void OnStart()
        {
            base.OnStart();

            try
            {
                NotificationService.CreateNotificationChannels();
                FileNotificationService.CreateNotificationChannels();

                LocalNotificationCenter.Current.NotificationActionTapped += OnNotificationActionTapped;
                LocalNotificationCenter.Current.NotificationActionTapped += OnFileNotificationActionTapped;
                LocalNotificationCenter.Current.NotificationActionTapped += OnWishlistNotificationActionTapped;

                var permissionResult = await LocalNotificationCenter.Current.RequestNotificationPermission();

                if (permissionResult)
                {
                    Console.WriteLine("✅ Notification permission granted");
                    await NotificationService.LoadNotificationsAsync();
                    await WishlistNotificationService.LoadWishlistNotificationsAsync();

                    if (DatabaseService != null)
                    {
                        var files = await DatabaseService.GetAllFilesAsync();
                        await FileNotificationService.RescheduleAllFileNotifications(files);
                    }
                }
                else
                {
                    Console.WriteLine("❌ Notification permission denied");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error initializing notifications: {ex.Message}");
            }
        }

        private void OnNotificationActionTapped(Plugin.LocalNotification.EventArgs.NotificationActionEventArgs e)
        {
            try
            {
                if (e.Request != null)
                {
                    NotificationService.HandleNotificationTapped(e.Request);

                    if (e.IsTapped)
                    {
                        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(async () =>
                        {
                            await Shell.Current.GoToAsync("//StudyTasksPage");
                        });
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error handling notification tap: {ex.Message}");
            }
        }

        private void OnFileNotificationActionTapped(Plugin.LocalNotification.EventArgs.NotificationActionEventArgs e)
        {
            try
            {
                if (e.Request != null)
                {
                    FileNotificationService.HandleNotificationTapped(e.Request,
                        async (file) =>
                        {
                            await Microsoft.Maui.ApplicationModel.MainThread.InvokeOnMainThreadAsync(async () =>
                            {
                                await Shell.Current.GoToAsync("//Files");
                            });
                        });
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error handling file notification tap: {ex.Message}");
            }
        }

        private void OnWishlistNotificationActionTapped(Plugin.LocalNotification.EventArgs.NotificationActionEventArgs e)
        {
            try
            {
                if (e.Request != null)
                {
                    WishlistNotificationService.HandleNotificationTapped(e.Request);

                    if (e.IsTapped)
                    {
                        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(async () =>
                        {
                            await Shell.Current.GoToAsync("//WishlistPage");
                        });
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error handling wishlist notification tap: {ex.Message}");
            }
        }

        protected override void OnResume()
        {
            base.OnResume();
            _ = NotificationService.RescheduleAllNotifications();
            _ = WishlistNotificationService.RescheduleAllWishlistNotifications();
            _ = RefreshFileNotifications();
        }

        private async Task RefreshFileNotifications()
        {
            if (DatabaseService != null)
            {
                var files = await DatabaseService.GetAllFilesAsync();
                await FileNotificationService.RescheduleAllFileNotifications(files);
            }
        }
    }
}