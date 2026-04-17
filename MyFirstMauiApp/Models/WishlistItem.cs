using System.ComponentModel;
using SQLite;

namespace MyFirstMauiApp.Models;

public class WishlistItem : INotifyPropertyChanged
{
    private string _status = "Planned";

    public string Id { get; set; } = Guid.NewGuid().ToString();
    public string UserId { get; set; } = string.Empty;
    public string ItemName { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public string EstimatedPrice { get; set; } = string.Empty;
    public string PriorityLevel { get; set; } = "Medium";
    public DateTime TargetDate { get; set; } = DateTime.Today;
    public int SnoozeIntervalMinutes { get; set; } = 5;
    public string RepeatOption { get; set; } = "None";

    public string Status
    {
        get => _status;
        set
        {
            if (_status != value)
            {
                _status = value;
                OnPropertyChanged(nameof(Status));
            }
        }
    }

    public string AddedDate { get; set; } = DateTime.Now.ToString("MMM yyyy");

    // For temporary storage of photo data when displaying in list
    [Ignore]
    public byte[]? PhotoData { get; set; }

    public event PropertyChangedEventHandler? PropertyChanged;

    protected void OnPropertyChanged(string name)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
    }
}