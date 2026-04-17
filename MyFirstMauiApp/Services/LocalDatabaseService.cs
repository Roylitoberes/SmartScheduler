using SQLite;
using MyFirstMauiApp.Models;

namespace SmartScheduler.Services
{
    public class LocalDatabaseService
    {
        private SQLiteAsyncConnection? _database;
        private readonly string _databasePath;

        public LocalDatabaseService()
        {
            _databasePath = Path.Combine(FileSystem.AppDataDirectory, "user_profiles.db3");
        }

        private async Task<SQLiteAsyncConnection> GetDatabase()
        {
            if (_database == null)
            {
                _database = new SQLiteAsyncConnection(_databasePath);
                await _database.CreateTableAsync<UserProfile>();
            }
            return _database;
        }

        public async Task<UserProfile?> GetProfileAsync(string userId)
        {
            var db = await GetDatabase();
            return await db.Table<UserProfile>()
                .FirstOrDefaultAsync(p => p.UserId == userId);
        }

        public async Task<int> SaveProfileAsync(UserProfile profile)
        {
            var db = await GetDatabase();

            var existing = await GetProfileAsync(profile.UserId);
            if (existing != null)
            {
                profile.LastUpdated = DateTime.Now;
                return await db.UpdateAsync(profile);
            }
            else
            {
                profile.LastUpdated = DateTime.Now;
                return await db.InsertAsync(profile);
            }
        }

        public async Task<int> DeleteProfileAsync(string userId)
        {
            var db = await GetDatabase();
            return await db.DeleteAsync<UserProfile>(userId);
        }

        public async Task<List<UserProfile>> GetAllProfilesAsync()
        {
            var db = await GetDatabase();
            return await db.Table<UserProfile>().ToListAsync();
        }

        public async Task<bool> ProfileExistsAsync(string userId)
        {
            var profile = await GetProfileAsync(userId);
            return profile != null;
        }

        public async Task<int> ClearAllProfilesAsync()
        {
            var db = await GetDatabase();
            return await db.DeleteAllAsync<UserProfile>();
        }

        public async Task<bool> UpdateProfilePictureAsync(string userId, string localPath, string firebaseUrl)
        {
            var profile = await GetProfileAsync(userId);
            if (profile != null)
            {
                profile.ProfilePicturePath = localPath;
                profile.ProfilePictureUrl = firebaseUrl;
                profile.LastUpdated = DateTime.Now;
                profile.IsSynced = true;
                await SaveProfileAsync(profile);
                return true;
            }
            return false;
        }

        public async Task<bool> UpdateUsernameAsync(string userId, string newUsername)
        {
            var profile = await GetProfileAsync(userId);
            if (profile != null)
            {
                profile.Username = newUsername;
                profile.DisplayName = newUsername;
                profile.LastUpdated = DateTime.Now;
                await SaveProfileAsync(profile);
                return true;
            }
            return false;
        }

        public async Task<bool> UpdateDisplayNameAsync(string userId, string newDisplayName)
        {
            var profile = await GetProfileAsync(userId);
            if (profile != null)
            {
                profile.DisplayName = newDisplayName;
                profile.LastUpdated = DateTime.Now;
                await SaveProfileAsync(profile);
                return true;
            }
            return false;
        }

        public async Task<bool> UpdateEmailAsync(string userId, string newEmail)
        {
            var profile = await GetProfileAsync(userId);
            if (profile != null)
            {
                profile.Email = newEmail;
                profile.LastUpdated = DateTime.Now;
                await SaveProfileAsync(profile);
                return true;
            }
            return false;
        }

        public async Task<string> GetProfilePicturePathAsync(string userId)
        {
            var profile = await GetProfileAsync(userId);
            if (profile != null && !string.IsNullOrEmpty(profile.ProfilePicturePath))
            {
                return profile.ProfilePicturePath;
            }
            return "default_avatar.png";
        }

        public async Task<string> GetUsernameAsync(string userId)
        {
            var profile = await GetProfileAsync(userId);
            if (profile != null && !string.IsNullOrEmpty(profile.Username))
            {
                return profile.Username;
            }
            return string.Empty;
        }

        public async Task<string> GetEmailAsync(string userId)
        {
            var profile = await GetProfileAsync(userId);
            if (profile != null && !string.IsNullOrEmpty(profile.Email))
            {
                return profile.Email;
            }
            return string.Empty;
        }
    }
}