namespace MyFirstMauiApp.Models
{
    public class Notification
    {
        public string? Id { get; set; }
        public string? UserId { get; set; }
        public string? Title { get; set; }
        public string? Message { get; set; }
        public DateTime Timestamp { get; set; }
        public bool IsRead { get; set; }
    }
}