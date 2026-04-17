using Firebase.Database;
using Firebase.Database.Query;
using MyFirstMauiApp.Models;
using SmartScheduler.Services;

namespace MyFirstMauiApp.Services;

public class PersonalActivityService
{
    private readonly FirebaseService _firebaseService;

    public PersonalActivityService()
    {
        _firebaseService = App.FirebaseService!;
    }

    public async Task<List<PersonalActivity>> GetActivitiesAsync()
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return new List<PersonalActivity>();

            var authDb = _firebaseService.GetAuthDatabase();

            var result = await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Activities")
                .OnceAsync<PersonalActivity>();

            return result.Select(x => x.Object).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting activities: {ex.Message}");
            return new List<PersonalActivity>();
        }
    }

    public async Task AddActivityAsync(PersonalActivity activity)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            activity.Id = Guid.NewGuid().ToString();
            activity.UserId = user.Id;
            activity.CreatedAt = DateTime.Now;

            // Ensure ElapsedSeconds is initialized to 0 for new activities
            activity.ElapsedSeconds = 0;

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Activities")
                .Child(activity.Id)
                .PutAsync(activity);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error adding activity: {ex.Message}");
            throw;
        }
    }

    public async Task UpdateActivityAsync(PersonalActivity activity)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Activities")
                .Child(activity.Id)
                .PutAsync(activity);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error updating activity: {ex.Message}");
            throw;
        }
    }

    public async Task DeleteActivityAsync(string id)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Activities")
                .Child(id)
                .DeleteAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error deleting activity: {ex.Message}");
            throw;
        }
    }

    // New method to get activities by status
    public async Task<List<PersonalActivity>> GetActivitiesByStatusAsync(string status)
    {
        try
        {
            var allActivities = await GetActivitiesAsync();
            return allActivities.Where(a => a.Status == status).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting activities by status: {ex.Message}");
            return new List<PersonalActivity>();
        }
    }

    // New method to get activities by category
    public async Task<List<PersonalActivity>> GetActivitiesByCategoryAsync(string category)
    {
        try
        {
            var allActivities = await GetActivitiesAsync();
            return allActivities.Where(a => a.Category == category).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting activities by category: {ex.Message}");
            return new List<PersonalActivity>();
        }
    }

    // New method to get activities by date range
    public async Task<List<PersonalActivity>> GetActivitiesByDateRangeAsync(DateTime startDate, DateTime endDate)
    {
        try
        {
            var allActivities = await GetActivitiesAsync();
            return allActivities.Where(a => a.Date.Date >= startDate.Date && a.Date.Date <= endDate.Date).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting activities by date range: {ex.Message}");
            return new List<PersonalActivity>();
        }
    }

    // New method to update activity progress
    public async Task UpdateActivityProgressAsync(string activityId, int elapsedSeconds)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            // Get the activity first
            var activity = await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Activities")
                .Child(activityId)
                .OnceSingleAsync<PersonalActivity>();

            if (activity != null)
            {
                activity.ElapsedSeconds = elapsedSeconds;

                // Auto-update status if needed
                if (activity.Duration > 0 && elapsedSeconds >= activity.Duration * 60)
                {
                    activity.Status = "Completed";
                    activity.CompletedAt = DateTime.Now;
                }
                else if (elapsedSeconds > 0 && activity.Status != "Completed")
                {
                    activity.Status = "In Progress";
                }

                await authDb
                    .Child("Users")
                    .Child(user.Id)
                    .Child("Activities")
                    .Child(activityId)
                    .PutAsync(activity);
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error updating activity progress: {ex.Message}");
            throw;
        }
    }

    // New method to get incomplete activities
    public async Task<List<PersonalActivity>> GetIncompleteActivitiesAsync()
    {
        try
        {
            var allActivities = await GetActivitiesAsync();
            return allActivities.Where(a => a.Status != "Completed").ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting incomplete activities: {ex.Message}");
            return new List<PersonalActivity>();
        }
    }

    // New method to get completed activities
    public async Task<List<PersonalActivity>> GetCompletedActivitiesAsync()
    {
        try
        {
            var allActivities = await GetActivitiesAsync();
            return allActivities.Where(a => a.Status == "Completed").ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting completed activities: {ex.Message}");
            return new List<PersonalActivity>();
        }
    }

    // New method to get activities with reminders
    public async Task<List<PersonalActivity>> GetActivitiesWithRemindersAsync()
    {
        try
        {
            var allActivities = await GetActivitiesAsync();
            return allActivities.Where(a => a.Reminder && a.Status != "Completed").ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting activities with reminders: {ex.Message}");
            return new List<PersonalActivity>();
        }
    }

    // New method to get today's activities
    public async Task<List<PersonalActivity>> GetTodayActivitiesAsync()
    {
        try
        {
            var allActivities = await GetActivitiesAsync();
            return allActivities.Where(a => a.Date.Date == DateTime.Today).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting today's activities: {ex.Message}");
            return new List<PersonalActivity>();
        }
    }

    // New method to reset activity (start over)
    public async Task ResetActivityAsync(string activityId)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            var activity = await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("Activities")
                .Child(activityId)
                .OnceSingleAsync<PersonalActivity>();

            if (activity != null)
            {
                activity.Status = "Pending";
                activity.ElapsedSeconds = 0;
                activity.CompletedAt = null;

                await authDb
                    .Child("Users")
                    .Child(user.Id)
                    .Child("Activities")
                    .Child(activityId)
                    .PutAsync(activity);
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error resetting activity: {ex.Message}");
            throw;
        }
    }

    // New method to get activity statistics
    public async Task<ActivityStatistics> GetActivityStatisticsAsync()
    {
        try
        {
            var allActivities = await GetActivitiesAsync();

            var statistics = new ActivityStatistics
            {
                TotalActivities = allActivities.Count,
                CompletedActivities = allActivities.Count(a => a.Status == "Completed"),
                PendingActivities = allActivities.Count(a => a.Status != "Completed"),
                InProgressActivities = allActivities.Count(a => a.Status == "In Progress"),
                TotalTimeSpent = allActivities.Sum(a => a.ElapsedSeconds),
                AverageCompletionRate = allActivities.Any() ?
                    (double)allActivities.Count(a => a.Status == "Completed") / allActivities.Count * 100 : 0
            };

            return statistics;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting activity statistics: {ex.Message}");
            return new ActivityStatistics();
        }
    }
}

// Helper class for statistics
public class ActivityStatistics
{
    public int TotalActivities { get; set; }
    public int CompletedActivities { get; set; }
    public int PendingActivities { get; set; }
    public int InProgressActivities { get; set; }
    public int TotalTimeSpent { get; set; } // in seconds
    public double AverageCompletionRate { get; set; }
}