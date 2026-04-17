namespace MyFirstMauiApp.Models;

public class EventItem
{
    public string Id { get; set; } = Guid.NewGuid().ToString();
    public string UserId { get; set; } = string.Empty;
    public string Title { get; set; } = "";
    public string Description { get; set; } = "";
    public DateTime EventDate { get; set; } = DateTime.Today;
    public TimeSpan EventTime { get; set; } = DateTime.Now.TimeOfDay;
    public string Location { get; set; } = "";
    public string Reminder { get; set; } = "30 minutes before";
    public string Priority { get; set; } = "Medium";
    public string Status { get; set; } = "Upcoming";
    public int SnoozeIntervalMinutes { get; set; } = 5;
    public string RepeatOption { get; set; } = "None";

    public bool IsCompleted => Status == "Completed";

    public DateTime GetFullDateTime()
    {
        return EventDate.Date.Add(EventTime);
    }

    public string GetFormattedDateTime()
    {
        string ampm = EventTime.Hours >= 12 ? "PM" : "AM";
        int hour = EventTime.Hours > 12 ? EventTime.Hours - 12 : EventTime.Hours;

        if (hour == 0) hour = 12;

        return $"{EventDate:MMMM dd, yyyy} at {hour}:{EventTime.Minutes:D2} {ampm}";
    }
}