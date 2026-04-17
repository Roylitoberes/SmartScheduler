using SQLite;

namespace MyFirstMauiApp.Models
{
    [Table("UserProfile")]
    public class UserProfile
    {
        [PrimaryKey]
        public string UserId { get; set; } = string.Empty;

        public string Username { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        public string DisplayName { get; set; } = string.Empty;
        public string ProfilePicturePath { get; set; } = string.Empty;
        public string ProfilePictureUrl { get; set; } = string.Empty;
        public DateTime LastUpdated { get; set; }
        public bool IsSynced { get; set; } = true;
    }
}