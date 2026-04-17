using Firebase.Database;
using Firebase.Database.Query;
using MyFirstMauiApp.Models;
using SmartScheduler.Services;

namespace MyFirstMauiApp.Services;

public class StudyTaskService
{
    private readonly FirebaseService _firebaseService;

    public StudyTaskService()
    {
        _firebaseService = App.FirebaseService!;
    }

    public async Task<List<StudyTask>> GetTasksAsync()
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return new List<StudyTask>();

            var authDb = _firebaseService.GetAuthDatabase();

            var result = await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("StudyTasks")
                .OnceAsync<StudyTask>();

            return result.Select(x => x.Object).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error getting tasks: {ex.Message}");
            return new List<StudyTask>();
        }
    }

    public async Task AddTaskAsync(StudyTask task)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            task.Id = Guid.NewGuid().ToString();
            task.UserId = user.Id;

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("StudyTasks")
                .Child(task.Id)
                .PutAsync(task);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error adding task: {ex.Message}");
            throw;
        }
    }

    public async Task UpdateTaskAsync(StudyTask task)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("StudyTasks")
                .Child(task.Id)
                .PutAsync(task);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error updating task: {ex.Message}");
            throw;
        }
    }

    public async Task DeleteTaskAsync(string id)
    {
        try
        {
            var user = _firebaseService.CurrentUser;
            if (user == null) return;

            var authDb = _firebaseService.GetAuthDatabase();

            await authDb
                .Child("Users")
                .Child(user.Id)
                .Child("StudyTasks")
                .Child(id)
                .DeleteAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error deleting task: {ex.Message}");
            throw;
        }
    }
}