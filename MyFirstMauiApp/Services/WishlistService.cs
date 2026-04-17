using Firebase.Database;
using Firebase.Database.Query;
using MyFirstMauiApp.Models;
using SmartScheduler.Services;

namespace MyFirstMauiApp.Services;

public class WishlistService
{
    private readonly FirebaseService _firebaseService;

    public WishlistService()
    {
        _firebaseService = App.FirebaseService!;
    }

    public async Task<List<WishlistItem>> GetItemsAsync()
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return new List<WishlistItem>();

            var authDb = _firebaseService.GetAuthDatabase();

            var result = await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Wishlist")
                .OnceAsync<WishlistItem>();

            return result.Select(x => x.Object).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting wishlist items: {ex.Message}");
            return new List<WishlistItem>();
        }
    }

    public async Task AddItemAsync(WishlistItem item)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            item.Id = Guid.NewGuid().ToString();
            item.UserId = user.Id;

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Wishlist")
                .Child(item.Id)
                .PutAsync(item);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error adding wishlist item: {ex.Message}");
            throw;
        }
    }

    public async Task UpdateItemAsync(WishlistItem item)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Wishlist")
                .Child(item.Id)
                .PutAsync(item);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error updating wishlist item: {ex.Message}");
            throw;
        }
    }

    public async Task DeleteItemAsync(string id)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Wishlist")
                .Child(id)
                .DeleteAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error deleting wishlist item: {ex.Message}");
            throw;
        }
    }
}