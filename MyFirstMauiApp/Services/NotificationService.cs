using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Plugin.LocalNotification;
using MyFirstMauiApp.Models;

namespace MyFirstMauiApp.Services
{
    public static class NotificationService
    {
        private static StudyTaskService _taskService = new();

        // CREATE NOTIFICATION CHANNELS (call this once at app startup)
        public static void CreateNotificationChannels()
        {
            try
            {
                // For Android 8.0+ we need to create channels
                // Note: In newer versions, channels are created automatically
                // This method is kept for compatibility

                Console.WriteLine("✅ Using default notification channels");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error with notification channels: {ex.Message}");
            }
        }

        // LOAD ALL PENDING NOTIFICATIONS FROM FIRESTORE
        public static async Task LoadNotificationsAsync()
        {
            try
            {
                var tasks = await _taskService.GetTasksAsync();

                // First, cancel all existing notifications to avoid duplicates
                LocalNotificationCenter.Current.CancelAll();

                // Schedule all pending tasks
                foreach (var task in tasks.Where(t => !t.IsCompleted))
                {
                    if (task.ScheduledDateTime > DateTime.Now)
                    {
                        ScheduleMainNotification(task);
                        Console.WriteLine($"✅ Scheduled main notification for: {task.Title} at {task.ScheduledDateTime}");
                    }

                    // ALWAYS schedule snooze notifications if task is not completed
                    if (task.IsSnoozing && !task.IsCompleted)
                    {
                        ScheduleSnoozeNotifications(task);
                        Console.WriteLine($"✅ Scheduled snooze notifications for: {task.Title}");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error loading notifications: {ex.Message}");
            }
        }

        // SCHEDULE MAIN NOTIFICATION
        public static void ScheduleMainNotification(StudyTask task)
        {
            try
            {
                // Don't schedule if it's in the past
                if (task.ScheduledDateTime <= DateTime.Now)
                {
                    Console.WriteLine($"⚠️ Main notification for {task.Title} is in the past, skipping");
                    return;
                }

                var schedule = new NotificationRequestSchedule
                {
                    NotifyTime = task.ScheduledDateTime
                };

                // Set repeat options if needed
                if (task.RepeatOption != "None")
                {
                    schedule.RepeatType = NotificationRepeat.TimeInterval;

                    schedule.NotifyRepeatInterval = task.RepeatOption switch
                    {
                        "Daily" => TimeSpan.FromDays(1),
                        "Every Hour" => TimeSpan.FromHours(1),
                        "Every 4 Hours" => TimeSpan.FromHours(4),
                        _ => TimeSpan.Zero
                    };
                }

                var request = new NotificationRequest
                {
                    NotificationId = task.NotificationId,
                    Title = "📚 " + task.Title,
                    Description = task.Description,
                    Schedule = schedule,
                    ReturningData = $"main:{task.NotificationId}"
                };

                LocalNotificationCenter.Current.Show(request);
                Console.WriteLine($"✅ Main notification scheduled for {task.ScheduledDateTime}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error scheduling main notification: {ex.Message}");
            }
        }

        // SCHEDULE SNOOZE NOTIFICATIONS (10 reminders)
        public static void ScheduleSnoozeNotifications(StudyTask task)
        {
            try
            {
                CancelSnoozeNotifications(task);

                // Always schedule from current time, not from original time
                for (int i = 1; i <= 10; i++)
                {
                    // Calculate snooze time based on current time
                    var snoozeTime = DateTime.Now.AddMinutes(task.SnoozeMinutes * i);

                    // Ensure it's in the future
                    if (snoozeTime <= DateTime.Now)
                    {
                        snoozeTime = DateTime.Now.AddMinutes(1); // Minimum 1 minute from now
                    }

                    var request = new NotificationRequest
                    {
                        NotificationId = GetSnoozeNotificationId(task.NotificationId, i),
                        Title = "⏰ Snooze Reminder: " + task.Title,
                        Description = task.Description,
                        Schedule = new NotificationRequestSchedule
                        {
                            NotifyTime = snoozeTime
                        },
                        ReturningData = $"snooze:{task.NotificationId}:{i}:{task.SnoozeMinutes}"
                    };

                    LocalNotificationCenter.Current.Show(request);
                    Console.WriteLine($"✅ Snooze {i} scheduled for {snoozeTime}");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error scheduling snooze notifications: {ex.Message}");
            }
        }

        // HANDLE NOTIFICATION TAPPED
        public static void HandleNotificationTapped(NotificationRequest request)
        {
            if (string.IsNullOrEmpty(request.ReturningData))
                return;

            var data = request.ReturningData.Split(':');

            switch (data[0])
            {
                case "snooze" when data.Length >= 3:
                    int originalTaskId = int.Parse(data[1]);
                    int snoozeIndex = int.Parse(data[2]);
                    // Cancel this specific snooze notification
                    LocalNotificationCenter.Current.Cancel(request.NotificationId);
                    Console.WriteLine($"🔔 Snooze notification tapped for task {originalTaskId}, index {snoozeIndex}");
                    break;

                case "main" when data.Length >= 2:
                    int taskId = int.Parse(data[1]);
                    Console.WriteLine($"🔔 Main notification tapped for task {taskId}");
                    break;
            }
        }

        // CANCEL SNOOZE NOTIFICATIONS
        public static void CancelSnoozeNotifications(StudyTask task)
        {
            for (int i = 1; i <= 10; i++)
            {
                LocalNotificationCenter.Current.Cancel(GetSnoozeNotificationId(task.NotificationId, i));
            }
            Console.WriteLine($"✅ Cancelled snooze notifications for task {task.Title}");
        }

        private static int GetSnoozeNotificationId(int baseId, int index)
        {
            return baseId + (index * 1000);
        }

        public static async Task UpdateTaskSnoozeState(StudyTask task, bool isSnoozing)
        {
            task.IsSnoozing = isSnoozing;
            await _taskService.UpdateTaskAsync(task);

            if (isSnoozing)
            {
                ScheduleSnoozeNotifications(task);
                Console.WriteLine($"✅ Snooze enabled for {task.Title}");
            }
            else
            {
                CancelSnoozeNotifications(task);
                Console.WriteLine($"⏸️ Snooze disabled for {task.Title}");
            }
        }

        public static void Cancel(StudyTask task)
        {
            LocalNotificationCenter.Current.Cancel(task.NotificationId);
            CancelSnoozeNotifications(task);
            Console.WriteLine($"✅ Cancelled all notifications for {task.Title}");
        }

        public static async Task RescheduleAllNotifications()
        {
            Console.WriteLine("🔄 Rescheduling all notifications...");
            LocalNotificationCenter.Current.CancelAll();
            await LoadNotificationsAsync();
        }

        public static void ClearAll()
        {
            LocalNotificationCenter.Current.CancelAll();
            Console.WriteLine("✅ Cleared all notifications");
        }
    }
}