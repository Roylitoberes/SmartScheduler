using Firebase.Database;
using Firebase.Database.Query;
using MyFirstMauiApp.Models;
using SmartScheduler.Services;

namespace MyFirstMauiApp.Services;

public class EventService
{
    private readonly FirebaseService _firebaseService;

    public EventService()
    {
        _firebaseService = App.FirebaseService!;
    }

    public async Task<List<EventItem>> GetEventsAsync(bool forceRefresh = false)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return new List<EventItem>();

            var authDb = _firebaseService.GetAuthDatabase();

            var result = await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Events")
                .OnceAsync<EventItem>();

            return result.Select(x => x.Object).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting events: {ex.Message}");
            return new List<EventItem>();
        }
    }

    public async Task AddEventAsync(EventItem eventItem)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            eventItem.Id = Guid.NewGuid().ToString();
            eventItem.UserId = user.Id;
            eventItem.Status = "Upcoming";

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Events")
                .Child(eventItem.Id)
                .PutAsync(eventItem);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error adding event: {ex.Message}");
            throw;
        }
    }

    public async Task UpdateEventAsync(EventItem eventItem)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Events")
                .Child(eventItem.Id)
                .PutAsync(eventItem);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error updating event: {ex.Message}");
            throw;
        }
    }

    public async Task DeleteEventAsync(string id)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Events")
                .Child(id)
                .DeleteAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error deleting event: {ex.Message}");
            throw;
        }
    }

    public async Task ToggleEventStatusAsync(string id, bool complete)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            // Get the current event first
            var eventItem = await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Events")
                .Child(id)
                .OnceSingleAsync<EventItem>();

            if (eventItem != null)
            {
                // Update the status
                eventItem.Status = complete ? "Completed" : "Upcoming";

                // Save the entire updated event back
                await authDb
                    .Child("Users")
                    .Child(user.Id)
                    .Child("Events")
                    .Child(id)
                    .PutAsync(eventItem);
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error toggling event status: {ex.Message}");
            throw;
        }
    }
}