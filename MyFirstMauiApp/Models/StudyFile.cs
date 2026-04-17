using System;

namespace MyFirstMauiApp.Models
{
    public class StudyTask
    {
        public string Id { get; set; } = string.Empty;
        public string UserId { get; set; } = string.Empty;
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public DateTime ScheduledDateTime { get; set; }
        public string Priority { get; set; } = "Medium";
        public bool IsCompleted { get; set; }
        public bool IsPending => !IsCompleted;
        public int NotificationId { get; set; }
        public int SnoozeMinutes { get; set; } = 5;
        public string RepeatOption { get; set; } = "None";
        public bool IsSnoozing { get; set; } = true;
        public DateTime CreatedAt { get; set; } = DateTime.Now;

        public DateTime DueTime
        {
            get => ScheduledDateTime;
            set => ScheduledDateTime = value;
        }

        public bool IsNotificationActive => !IsCompleted && ScheduledDateTime > DateTime.Now;

        public bool HasDescription => !string.IsNullOrWhiteSpace(Description);

        // Calculate priority score (LOWER score = MORE urgent)
        public int GetPriorityScore()
        {
            int score = 0;

            // 1. Days until due (most important factor)
            var daysUntilDue = (ScheduledDateTime.Date - DateTime.Today).Days;
            if (daysUntilDue < 0) score += 0;      // Overdue - highest priority
            else if (daysUntilDue == 0) score += 10;  // Due today
            else if (daysUntilDue == 1) score += 20;  // Tomorrow
            else if (daysUntilDue <= 3) score += 30;  // This week
            else if (daysUntilDue <= 7) score += 40;  // Next week
            else score += 50;                          // Future

            // 2. Time of day (earlier = more urgent)
            var hourOfDay = ScheduledDateTime.Hour;
            score += hourOfDay / 10;

            // 3. Has description? (More detailed tasks might be more important)
            if (!string.IsNullOrWhiteSpace(Description)) score -= 5;

            // 4. Repeat option (Daily tasks might be more urgent)
            if (RepeatOption == "Daily") score -= 10;
            else if (RepeatOption == "Every Hour") score -= 15;

            return score;
        }

        // Get human-readable urgency text
        public string GetUrgencyLevel()
        {
            var daysUntilDue = (ScheduledDateTime.Date - DateTime.Today).Days;

            if (daysUntilDue < 0) return "⏰ OVERDUE!";
            if (daysUntilDue == 0) return "⚠️ DUE TODAY!";
            if (daysUntilDue == 1) return "🔴 Tomorrow";
            if (daysUntilDue <= 3) return "🟡 This Week";
            if (daysUntilDue <= 7) return "🟢 Next Week";
            return "📅 Future";
        }

        // Get urgency color
        public Color GetUrgencyColor()
        {
            var daysUntilDue = (ScheduledDateTime.Date - DateTime.Today).Days;

            if (daysUntilDue < 0) return Colors.Red;
            if (daysUntilDue == 0) return Colors.Orange;
            if (daysUntilDue == 1) return Colors.OrangeRed;
            if (daysUntilDue <= 3) return Colors.Gold;
            if (daysUntilDue <= 7) return Colors.LightGreen;
            return Colors.LightGray;
        }

        // Priority order for sorting
        public int PriorityOrder
        {
            get
            {
                return Priority switch
                {
                    "High" => 0,
                    "Medium" => 1,
                    "Low" => 2,
                    _ => 3
                };
            }
        }

        public DateTime GetNextSnoozeTime(int snoozeCount)
        {
            return DateTime.Now.AddMinutes(SnoozeMinutes * snoozeCount);
        }
    }
}