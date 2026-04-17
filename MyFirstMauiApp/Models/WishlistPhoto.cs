using SQLite;

namespace MyFirstMauiApp.Models;

public class WishlistPhoto
{
    [PrimaryKey, AutoIncrement]
    public int Id { get; set; }
    public string WishlistItemId { get; set; } = string.Empty;
    public byte[] PhotoData { get; set; } = Array.Empty<byte>();
    public DateTime LastUpdated { get; set; }
}