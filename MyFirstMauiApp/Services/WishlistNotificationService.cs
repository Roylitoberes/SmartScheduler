using Plugin.LocalNotification;
using MyFirstMauiApp.Models;
using System.Collections.ObjectModel;

namespace MyFirstMauiApp.Services;

public static class WishlistNotificationService
{
    private static Dictionary<int, CancellationTokenSource> _snoozeTokens
        = new Dictionary<int, CancellationTokenSource>();

    // Active notifications collection
    public static ObservableCollection<WishlistItem> ActiveWishlistNotifications { get; }
        = new ObservableCollection<WishlistItem>();

    // Schedule main notification for wishlist item
    public static void Schedule(WishlistItem item, DateTime notifyTime)
    {
        if (notifyTime <= DateTime.Now)
            return;

        int notificationId = item.Id.GetHashCode();

        var schedule = new NotificationRequestSchedule
        {
            NotifyTime = notifyTime
        };

        // Handle repeat options
        if (item.RepeatOption != "None")
        {
            schedule.RepeatType = NotificationRepeat.TimeInterval;
            schedule.NotifyRepeatInterval = item.RepeatOption switch
            {
                "Every 30 minutes" => TimeSpan.FromMinutes(30),
                "Every 1 hour" => TimeSpan.FromHours(1),
                "Every 4 hours" => TimeSpan.FromHours(4),
                "Daily" => TimeSpan.FromDays(1),
                "Weekly" => TimeSpan.FromDays(7),
                "Monthly" => TimeSpan.FromDays(30),
                "Weekdays" => TimeSpan.FromDays(1),
                "Weekends" => TimeSpan.FromDays(1),
                _ => TimeSpan.Zero
            };
        }

        var request = new NotificationRequest
        {
            NotificationId = notificationId,
            Title = "🎁 Wishlist Reminder",
            Description = string.IsNullOrWhiteSpace(item.Description)
                ? item.ItemName
                : $"{item.ItemName}\n{item.Description}",
            Schedule = schedule,
            ReturningData = $"wishlist_main:{item.Id}"
        };

        LocalNotificationCenter.Current.Show(request);

        // ADD TO ACTIVE WISHLIST NOTIFICATIONS
        AddWishlistNotification(item);

        // Start snooze notifications if item is not bought
        if (item.Status != "Bought")
        {
            StartSnooze(item);
        }
    }

    // Schedule snooze notifications (similar to StudyTask - 10 reminders)
    public static void StartSnooze(WishlistItem item)
    {
        StopSnooze(item);

        // Schedule 10 snooze reminders
        for (int i = 1; i <= 10; i++)
        {
            var snoozeTime = DateTime.Now.AddMinutes(item.SnoozeIntervalMinutes * i);

            if (snoozeTime <= DateTime.Now)
            {
                snoozeTime = DateTime.Now.AddMinutes(1);
            }

            int snoozeNotificationId = GetSnoozeNotificationId(item.Id.GetHashCode(), i);

            var request = new NotificationRequest
            {
                NotificationId = snoozeNotificationId,
                Title = "⏰ Wishlist Reminder",
                Description = string.IsNullOrWhiteSpace(item.Description)
                    ? item.ItemName
                    : $"{item.ItemName}\n{item.Description}",
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = snoozeTime
                },
                ReturningData = $"wishlist_snooze:{item.Id}:{i}:{item.SnoozeIntervalMinutes}"
            };

            LocalNotificationCenter.Current.Show(request);
            Console.WriteLine($"✅ Wishlist snooze {i} scheduled for {snoozeTime}");
        }

        // Also keep the old background loop for additional reminders
        var cts = new CancellationTokenSource();
        int key = item.Id.GetHashCode();
        _snoozeTokens[key] = cts;

        _ = SnoozeLoop(item, cts.Token);
    }

    // Background snooze loop (for additional reminders beyond the scheduled ones)
    private static async Task SnoozeLoop(WishlistItem item, CancellationToken token)
    {
        try
        {
            int snoozeCount = 0;
            while (!token.IsCancellationRequested && snoozeCount < 20)
            {
                await Task.Delay(item.SnoozeIntervalMinutes * 60000, token);

                if (token.IsCancellationRequested)
                    break;

                snoozeCount++;

                var request = new NotificationRequest
                {
                    NotificationId = new Random().Next(100000, 999999),
                    Title = "⏰ Wishlist Reminder",
                    Description = string.IsNullOrWhiteSpace(item.Description)
                        ? item.ItemName
                        : $"{item.ItemName}\n{item.Description}",
                    Schedule = new NotificationRequestSchedule
                    {
                        NotifyTime = DateTime.Now.AddSeconds(5)
                    },
                    ReturningData = $"wishlist_snooze_loop:{item.Id}:{snoozeCount}"
                };

                await LocalNotificationCenter.Current.Show(request);

                // ADD SNOOZE NOTIFICATION TO ACTIVE LIST
                AddWishlistNotification(item);
            }
        }
        catch (TaskCanceledException) { }
        catch (Exception ex)
        {
            Console.WriteLine($"Error in snooze loop: {ex.Message}");
        }
    }

    // Stop all snooze notifications for an item
    public static void StopSnooze(WishlistItem item)
    {
        // Cancel background loop
        int key = item.Id.GetHashCode();
        if (_snoozeTokens.ContainsKey(key))
        {
            _snoozeTokens[key].Cancel();
            _snoozeTokens.Remove(key);
        }

        // Cancel all scheduled snooze notifications
        for (int i = 1; i <= 10; i++)
        {
            int snoozeId = GetSnoozeNotificationId(item.Id.GetHashCode(), i);
            LocalNotificationCenter.Current.Cancel(snoozeId);
        }
    }

    // Cancel all notifications for an item
    public static void Cancel(WishlistItem item)
    {
        StopSnooze(item);

        int notificationId = item.Id.GetHashCode();
        LocalNotificationCenter.Current.Cancel(notificationId);

        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            var toRemove = ActiveWishlistNotifications
                .FirstOrDefault(n => n.Id == item.Id);
            if (toRemove != null)
                ActiveWishlistNotifications.Remove(toRemove);
        });
    }

    // Handle notification tapped
    public static void HandleNotificationTapped(NotificationRequest request)
    {
        if (string.IsNullOrEmpty(request.ReturningData))
            return;

        var data = request.ReturningData.Split(':');

        switch (data[0])
        {
            case "wishlist_snooze" when data.Length >= 3:
                string itemId = data[1];
                int snoozeIndex = int.Parse(data[2]);
                // Cancel this specific snooze notification
                LocalNotificationCenter.Current.Cancel(request.NotificationId);
                Console.WriteLine($"🔔 Wishlist snooze notification tapped for item {itemId}, index {snoozeIndex}");
                break;

            case "wishlist_main" when data.Length >= 2:
                string mainItemId = data[1];
                Console.WriteLine($"🔔 Wishlist main notification tapped for item {mainItemId}");
                break;

            case "wishlist_snooze_loop" when data.Length >= 2:
                string loopItemId = data[1];
                Console.WriteLine($"🔔 Wishlist loop snooze notification tapped for item {loopItemId}");
                break;
        }
    }

    // Load all pending wishlist notifications
    public static async Task LoadWishlistNotificationsAsync()
    {
        try
        {
            var wishlistService = new WishlistService();
            var items = await wishlistService.GetItemsAsync();

            // Cancel all existing wishlist notifications
            CancelAllWishlistNotifications();

            // Schedule all pending items (not bought and future date)
            foreach (var item in items.Where(i => i.Status != "Bought" && i.TargetDate > DateTime.Now))
            {
                Schedule(item, item.TargetDate);
                Console.WriteLine($"✅ Scheduled wishlist notification for: {item.ItemName} at {item.TargetDate}");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"❌ Error loading wishlist notifications: {ex.Message}");
        }
    }

    // Cancel all wishlist notifications
    public static void CancelAllWishlistNotifications()
    {
        try
        {
            // Clear all active notifications from UI
            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
            {
                ActiveWishlistNotifications.Clear();
            });

            // Cancel all snooze tokens
            foreach (var token in _snoozeTokens.Values)
            {
                token.Cancel();
            }
            _snoozeTokens.Clear();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error canceling all wishlist notifications: {ex.Message}");
        }
    }

    // Reschedule all wishlist notifications
    public static async Task RescheduleAllWishlistNotifications()
    {
        Console.WriteLine("🔄 Rescheduling all wishlist notifications...");
        CancelAllWishlistNotifications();
        await LoadWishlistNotificationsAsync();
    }

    // Clear all wishlist notifications
    public static void ClearAll()
    {
        CancelAllWishlistNotifications();
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            ActiveWishlistNotifications.Clear();
        });
        Console.WriteLine("✅ Cleared all wishlist notifications");
    }

    // Add notification to active list (thread-safe)
    private static void AddWishlistNotification(WishlistItem item)
    {
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            // Check if already exists to avoid duplicates
            if (!ActiveWishlistNotifications.Any(n => n.Id == item.Id))
            {
                ActiveWishlistNotifications.Add(item);
            }
        });
    }

    // Get snooze notification ID
    private static int GetSnoozeNotificationId(int baseId, int index)
    {
        return baseId + (index * 1000) + 50000; // Add offset to avoid conflicts
    }
}