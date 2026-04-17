using SQLite;
using MyFirstMauiApp.Models;

namespace MyFirstMauiApp.Services;

public class LocalPhotoService
{
    private SQLiteAsyncConnection? _database;
    private readonly string _databasePath;

    public LocalPhotoService()
    {
        _databasePath = Path.Combine(FileSystem.AppDataDirectory, "wishlist_photos.db3");
        InitializeDatabase();
    }

    private async void InitializeDatabase()
    {
        await Init();
    }

    public async Task Init()
    {
        if (_database != null)
            return;

        _database = new SQLiteAsyncConnection(_databasePath);
        await _database.CreateTableAsync<WishlistPhoto>();
    }

    public async Task SavePhotoAsync(string wishlistItemId, byte[] photoData)
    {
        await Init();
        if (_database == null) return;

        var photo = new WishlistPhoto
        {
            WishlistItemId = wishlistItemId,
            PhotoData = photoData,
            LastUpdated = DateTime.Now
        };

        // Delete existing photo if any - use DeleteAllAsync with a query
        await _database.ExecuteAsync("DELETE FROM WishlistPhoto WHERE WishlistItemId = ?", wishlistItemId);

        // Save new photo
        await _database.InsertAsync(photo);
    }

    public async Task<byte[]?> GetPhotoAsync(string wishlistItemId)
    {
        await Init();
        if (_database == null) return null;

        var photo = await _database.Table<WishlistPhoto>()
            .Where(p => p.WishlistItemId == wishlistItemId)
            .FirstOrDefaultAsync();

        return photo?.PhotoData;
    }

    public async Task DeletePhotoAsync(string wishlistItemId)
    {
        await Init();
        if (_database == null) return;

        // Use ExecuteAsync for deletion
        await _database.ExecuteAsync("DELETE FROM WishlistPhoto WHERE WishlistItemId = ?", wishlistItemId);
    }
}