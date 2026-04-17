using Microsoft.Maui.ApplicationModel;
using MyFirstMauiApp.Models;
using Plugin.LocalNotification;
using System.Collections.ObjectModel;

namespace MyFirstMauiApp.Services;

public static class EventNotificationService
{
    private static Dictionary<int, CancellationTokenSource> _snoozeTokens = new();
    public static ObservableCollection<EventItem> ActiveEventNotifications { get; } = new ObservableCollection<EventItem>();

    // Schedule main notification for event
    public static void Schedule(EventItem item)
    {
        DateTime notifyTime = item.GetFullDateTime();

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
            Title = "📅 Event Reminder",
            Description = string.IsNullOrWhiteSpace(item.Description)
                ? item.Title
                : $"{item.Title}\n{item.Description}",
            Schedule = schedule,
            ReturningData = $"event_main:{item.Id}"
        };

        LocalNotificationCenter.Current.Show(request);
        Console.WriteLine($"✅ Event notification scheduled for: {item.Title} at {notifyTime}");

        // Add to active notifications
        if (!ActiveEventNotifications.Any(e => e.Id == item.Id))
        {
            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() => ActiveEventNotifications.Add(item));
        }

        // Start snooze if event is not completed
        if (item.Status != "Completed")
        {
            StartSnooze(item);
        }
    }

    // Schedule snooze notifications (10 reminders like StudyTask)
    public static void StartSnooze(EventItem item)
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
                Title = "⏰ Snoozed Event Reminder",
                Description = item.Title,
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = snoozeTime
                },
                ReturningData = $"event_snooze:{item.Id}:{i}:{item.SnoozeIntervalMinutes}"
            };

            LocalNotificationCenter.Current.Show(request);
            Console.WriteLine($"✅ Event snooze {i} scheduled for {snoozeTime}");
        }

        // Also keep background loop for additional reminders
        var cts = new CancellationTokenSource();
        int key = item.Id.GetHashCode();
        _snoozeTokens[key] = cts;

        _ = SnoozeLoop(item, cts.Token);
    }

    // Background snooze loop
    private static async Task SnoozeLoop(EventItem item, CancellationToken token)
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
                    Title = "⏰ Snoozed Event Reminder",
                    Description = item.Title,
                    Schedule = new NotificationRequestSchedule
                    {
                        NotifyTime = DateTime.Now.AddSeconds(5)
                    },
                    ReturningData = $"event_snooze_loop:{item.Id}:{snoozeCount}"
                };

                await LocalNotificationCenter.Current.Show(request);
                Console.WriteLine($"✅ Event background snooze {snoozeCount} sent");
            }
        }
        catch (TaskCanceledException)
        {
            // Expected when cancellation occurs
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error in event snooze loop: {ex.Message}");
        }
    }

    // Stop all snooze notifications for an event
    public static void StopSnooze(EventItem item)
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

    // Cancel all notifications for an event
    public static void Cancel(EventItem item)
    {
        StopSnooze(item);

        int notificationId = item.Id.GetHashCode();
        LocalNotificationCenter.Current.Cancel(notificationId);

        if (ActiveEventNotifications.Any(e => e.Id == item.Id))
        {
            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() => ActiveEventNotifications.Remove(item));
        }

        Console.WriteLine($"✅ Cancelled all notifications for event: {item.Title}");
    }

    // Handle notification tapped
    public static void HandleNotificationTapped(NotificationRequest request)
    {
        if (string.IsNullOrEmpty(request.ReturningData))
            return;

        var data = request.ReturningData.Split(':');

        switch (data[0])
        {
            case "event_snooze" when data.Length >= 3:
                string itemId = data[1];
                int snoozeIndex = int.Parse(data[2]);
                // Cancel this specific snooze notification
                LocalNotificationCenter.Current.Cancel(request.NotificationId);
                Console.WriteLine($"🔔 Event snooze notification tapped for event {itemId}, index {snoozeIndex}");
                break;

            case "event_main" when data.Length >= 2:
                string mainItemId = data[1];
                Console.WriteLine($"🔔 Event main notification tapped for event {mainItemId}");
                break;

            case "event_snooze_loop" when data.Length >= 2:
                string loopItemId = data[1];
                Console.WriteLine($"🔔 Event loop snooze notification tapped for event {loopItemId}");
                break;
        }
    }

    // Load all pending event notifications
    public static async Task LoadEventNotificationsAsync()
    {
        try
        {
            var eventService = new EventService();
            var items = await eventService.GetEventsAsync(false);

            // Cancel all existing event notifications
            CancelAllEventNotifications();

            // Schedule all pending events (not completed and future date)
            foreach (var item in items.Where(e => e.Status != "Completed" && e.GetFullDateTime() > DateTime.Now))
            {
                Schedule(item);
                Console.WriteLine($"✅ Scheduled event notification for: {item.Title} at {item.GetFullDateTime()}");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"❌ Error loading event notifications: {ex.Message}");
        }
    }

    // Cancel all event notifications
    public static void CancelAllEventNotifications()
    {
        try
        {
            // Clear all active notifications from UI
            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
            {
                ActiveEventNotifications.Clear();
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
            Console.WriteLine($"Error canceling all event notifications: {ex.Message}");
        }
    }

    // Reschedule all event notifications
    public static async Task RescheduleAllEventNotifications()
    {
        Console.WriteLine("🔄 Rescheduling all event notifications...");
        CancelAllEventNotifications();
        await LoadEventNotificationsAsync();
    }

    // Clear all event notifications
    public static void ClearAll()
    {
        CancelAllEventNotifications();
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            ActiveEventNotifications.Clear();
        });
        Console.WriteLine("✅ Cleared all event notifications");
    }

    // Get snooze notification ID
    private static int GetSnoozeNotificationId(int baseId, int index)
    {
        return baseId + (index * 1000) + 100000; // Add offset to avoid conflicts
    }
}