using System.ComponentModel;

namespace MyFirstMauiApp.Models
{
    public class PersonalActivity : INotifyPropertyChanged
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public string UserId { get; set; } = string.Empty;
        public string Title { get; set; } = string.Empty;
        public string Category { get; set; } = "Other";
        public string Description { get; set; } = string.Empty;
        public DateTime Date { get; set; } = DateTime.Now;
        public TimeSpan Time { get; set; } = TimeSpan.Zero;
        public int Duration { get; set; } = 0;
        public bool Reminder { get; set; } = false;
        public int NotificationId { get; set; } = new Random().Next(100000, 999999);
        public int SnoozeMinutes { get; set; } = 5;
        public string RepeatOption { get; set; } = "None";
        public bool IsSnoozing { get; set; } = false;

        private string _status = "Pending";
        public string Status
        {
            get => _status;
            set
            {
                if (_status != value)
                {
                    _status = value;
                    OnPropertyChanged(nameof(Status));
                    OnPropertyChanged(nameof(IsInProgress));
                    OnPropertyChanged(nameof(TimerButtonText));
                }
            }
        }

        private int _elapsedSeconds = 0;
        public int ElapsedSeconds
        {
            get => _elapsedSeconds;
            set
            {
                if (_elapsedSeconds != value)
                {
                    _elapsedSeconds = value;
                    OnPropertyChanged(nameof(ElapsedSeconds));
                    OnPropertyChanged(nameof(ProgressPercentage));
                    OnPropertyChanged(nameof(ProgressPercentageText));
                    OnPropertyChanged(nameof(ElapsedTimeLabel));
                }
            }
        }

        public double ProgressPercentage => Duration > 0 ? (double)ElapsedSeconds / (Duration * 60) : 0;

        public string ProgressPercentageText => $"{ProgressPercentage:P0} Complete";

        public string ElapsedTimeLabel => $"{TimeSpan.FromSeconds(ElapsedSeconds):mm\\:ss} elapsed";

        public string TimerButtonText => IsInProgress ? "⏸ Pause Timer" : "▶ Start Timer";

        public bool IsInProgress => Status == "In Progress";

        public DateTime CreatedAt { get; set; } = DateTime.Now;
        public DateTime? CompletedAt { get; set; } = null;

        public event PropertyChangedEventHandler? PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}