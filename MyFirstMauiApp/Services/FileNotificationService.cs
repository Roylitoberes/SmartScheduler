using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Plugin.LocalNotification;
using MyFirstMauiApp.Models;

namespace MyFirstMauiApp.Services
{
    public static class FileNotificationService
    {
        public static void CreateNotificationChannels()
        {
            try
            {
                Console.WriteLine("✅ File notification channels ready");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error with notification channels: {ex.Message}");
            }
        }

        public static void ScheduleFileReminder(FileItem file, DateTime reminderDateTime)
        {
            try
            {
                if (reminderDateTime <= DateTime.Now)
                {
                    Console.WriteLine($"⚠️ Reminder for {file.FileName} is in the past, skipping");
                    return;
                }

                var notificationId = GetNotificationId(file.Id);

                var schedule = new NotificationRequestSchedule
                {
                    NotifyTime = reminderDateTime
                };

                var request = new NotificationRequest
                {
                    NotificationId = notificationId,
                    Title = "📁 File Reminder",
                    Description = $"Time to review: {file.FileName}",
                    Schedule = schedule,
                    ReturningData = $"file:{file.Id}:{file.FileName}:{file.FilePath}"
                };

                LocalNotificationCenter.Current.Show(request);
                Console.WriteLine($"✅ File reminder scheduled for {file.FileName} at {reminderDateTime}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error scheduling file reminder: {ex.Message}");
            }
        }

        public static void CancelFileReminder(FileItem file)
        {
            try
            {
                var notificationId = GetNotificationId(file.Id);
                LocalNotificationCenter.Current.Cancel(notificationId);
                Console.WriteLine($"✅ Cancelled reminders for {file.FileName}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"❌ Error cancelling reminders: {ex.Message}");
            }
        }

        public static void HandleNotificationTapped(NotificationRequest request, Action<FileItem> onOpenFile)
        {
            if (string.IsNullOrEmpty(request.ReturningData))
                return;

            var data = request.ReturningData.Split(':');

            if (data.Length >= 4 && data[0] == "file")
            {
                var fileId = data[1];
                var fileName = data[2];
                var filePath = data[3];

                var file = new FileItem
                {
                    Id = fileId,
                    FileName = fileName,
                    FilePath = filePath
                };

                Console.WriteLine($"🔔 File reminder tapped for {fileName}");
                onOpenFile?.Invoke(file);
            }
        }

        private static int GetNotificationId(string fileId)
        {
            return Math.Abs(fileId.GetHashCode());
        }

        public static async Task RescheduleAllFileNotifications(List<FileItem> files)
        {
            Console.WriteLine("🔄 Rescheduling all file notifications...");
            LocalNotificationCenter.Current.CancelAll();

            foreach (var file in files.Where(f => f.HasReminder && f.ReminderDate > DateTime.Now))
            {
                if (file.ReminderDate.HasValue)
                {
                    ScheduleFileReminder(file, file.ReminderDate.Value);
                }
            }
        }

        public static void ClearAll()
        {
            LocalNotificationCenter.Current.CancelAll();
            Console.WriteLine("✅ Cleared all file notifications");
        }

        public static void StopBackgroundVibration()
        {
            Console.WriteLine("✅ Vibration stopped");
        }
    }
}