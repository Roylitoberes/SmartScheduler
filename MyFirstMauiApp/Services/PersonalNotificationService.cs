using Plugin.LocalNotification;
using MyFirstMauiApp.Models;
using System.Collections.ObjectModel;

namespace MyFirstMauiApp.Services;

public static class PersonalNotificationService
{
    private static Dictionary<int, CancellationTokenSource> _snoozeTokens
        = new Dictionary<int, CancellationTokenSource>();

    public static ObservableCollection<PersonalActivity> ActivePersonalNotifications { get; }
        = new ObservableCollection<PersonalActivity>();

    public static List<int> SnoozeOptions { get; } = new()
    {
        1,
        5,
        10,
        15,
        30
    };

    public static List<string> RepeatOptions { get; } = new()
    {
        "None",
        "Daily",
        "Every 4 Hours",
        "Every Hour"
    };

    public static void Schedule(PersonalActivity activity)
    {
        if (!activity.Reminder || activity.Status == "Completed")
            return;

        var notifyTime = activity.Date.Date.Add(activity.Time);

        if (notifyTime <= DateTime.Now)
        {
            if (activity.RepeatOption == "None")
                return;

            notifyTime = GetNextNotificationTime(activity);
            if (notifyTime <= DateTime.Now)
                return;
        }

        var request = new NotificationRequest
        {
            NotificationId = activity.NotificationId,
            Title = "🎯 Personal Activity Reminder",
            Description = string.IsNullOrWhiteSpace(activity.Description)
                ? activity.Title
                : $"{activity.Title}\n{activity.Description}",
            Schedule = new NotificationRequestSchedule
            {
                NotifyTime = notifyTime
            }
        };

        LocalNotificationCenter.Current.Show(request);
        AddPersonalNotification(activity);
        StartSnooze(activity);
    }

    private static DateTime GetNextNotificationTime(PersonalActivity activity)
    {
        DateTime baseTime = activity.Date.Date.Add(activity.Time);
        DateTime now = DateTime.Now;

        switch (activity.RepeatOption)
        {
            case "Daily":
                return now.Date.AddDays(1).Add(activity.Time);
            case "Every 4 Hours":
                while (baseTime <= now)
                {
                    baseTime = baseTime.AddHours(4);
                }
                return baseTime;
            case "Every Hour":
                while (baseTime <= now)
                {
                    baseTime = baseTime.AddHours(1);
                }
                return baseTime;
            default:
                return now.AddMinutes(1);
        }
    }

    private static void AddPersonalNotification(PersonalActivity activity)
    {
        var notification = new PersonalActivity
        {
            Title = "🎯 Personal Activity Reminder",
            Description = $"{activity.Title} - {activity.Category}",
            Date = DateTime.Now
        };

        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            ActivePersonalNotifications.Add(notification);
        });
    }

    public static void StartSnooze(PersonalActivity activity)
    {
        if (activity.Status == "Completed")
            return;

        StopSnooze(activity);

        var cts = new CancellationTokenSource();
        int key = activity.NotificationId;
        _snoozeTokens[key] = cts;

        _ = SnoozeLoop(activity, cts.Token);
    }

    private static async Task SnoozeLoop(PersonalActivity activity, CancellationToken token)
    {
        try
        {
            while (!token.IsCancellationRequested && activity.Status != "Completed")
            {
                await Task.Delay(activity.SnoozeMinutes * 60000, token);

                if (token.IsCancellationRequested || activity.Status == "Completed")
                    break;

                var request = new NotificationRequest
                {
                    NotificationId = new Random().Next(100000, 999999),
                    Title = "⏰ Personal Activity Reminder (Snoozed)",
                    Description = string.IsNullOrWhiteSpace(activity.Description)
                        ? activity.Title
                        : $"{activity.Title}\n{activity.Description}",
                    Schedule = new NotificationRequestSchedule
                    {
                        NotifyTime = DateTime.Now
                    }
                };

                await LocalNotificationCenter.Current.Show(request);
                AddPersonalNotification(activity);
            }
        }
        catch (TaskCanceledException) { }
    }

    public static void StopSnooze(PersonalActivity activity)
    {
        int key = activity.NotificationId;
        if (_snoozeTokens.ContainsKey(key))
        {
            _snoozeTokens[key].Cancel();
            _snoozeTokens.Remove(key);
        }
    }

    public static void UpdateNotification(PersonalActivity activity)
    {
        Cancel(activity);
        if (activity.Reminder && activity.Status != "Completed")
        {
            Schedule(activity);
        }
    }

    public static void Cancel(PersonalActivity activity)
    {
        StopSnooze(activity);
        LocalNotificationCenter.Current.Cancel(activity.NotificationId);

        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            var toRemove = ActivePersonalNotifications
                .FirstOrDefault(n => n.Description?.Contains(activity.Title) ?? false);
            if (toRemove != null)
                ActivePersonalNotifications.Remove(toRemove);
        });
    }

    public static void ClearAll()
    {
        foreach (var token in _snoozeTokens.Values)
        {
            token.Cancel();
            token.Dispose();
        }
        _snoozeTokens.Clear();

        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            ActivePersonalNotifications.Clear();
        });
    }
}