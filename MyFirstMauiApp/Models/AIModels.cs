namespace MyFirstMauiApp.Models
{
    public class AIInsights
    {
        public string Tip { get; set; } = string.Empty;
        public string ProductivityMessage { get; set; } = string.Empty;
        public string BestStudyTime { get; set; } = string.Empty;
        public int CurrentStreak { get; set; }
        public string NextDeadlineWarning { get; set; } = string.Empty;
    }

    public class AISubtask
    {
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public bool IsSelected { get; set; }
    }

    public class ChatMessage
    {
        public string Sender { get; set; } = string.Empty;
        public string Content { get; set; } = string.Empty;
        public DateTime Timestamp { get; set; }
        public bool IsUser { get; set; }
    }
}