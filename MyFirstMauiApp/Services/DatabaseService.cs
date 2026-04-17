using SQLite;
using MyFirstMauiApp.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace MyFirstMauiApp.Services
{
    public class DatabaseService
    {
        private SQLiteAsyncConnection? _database;
        private readonly string _databasePath;
        private string _currentUserId = string.Empty;

        public DatabaseService()
        {
            _databasePath = Path.Combine(FileSystem.AppDataDirectory, "files.db3");
        }

        private string GetCurrentUserId()
        {
            if (string.IsNullOrEmpty(_currentUserId))
            {
                _currentUserId = App.FirebaseService?.CurrentUser?.Id ?? "anonymous";
            }
            return _currentUserId;
        }

        public async Task InitializeAsync()
        {
            if (_database == null)
            {
                _database = new SQLiteAsyncConnection(_databasePath);
                await _database.CreateTableAsync<FileItem>();
                await _database.CreateTableAsync<FileReminderLog>();
            }
        }

        public async Task<List<FileItem>> GetAllFilesAsync()
        {
            await InitializeAsync();
            var userId = GetCurrentUserId();
            return await _database!.Table<FileItem>()
                .Where(f => f.UserId == userId)
                .OrderByDescending(f => f.CreatedDate)
                .ToListAsync();
        }

        public async Task<List<FileItem>> GetFilesByCategoryAsync(string category)
        {
            await InitializeAsync();
            var userId = GetCurrentUserId();
            return await _database!.Table<FileItem>()
                .Where(f => f.UserId == userId && f.Category == category)
                .OrderByDescending(f => f.CreatedDate)
                .ToListAsync();
        }

        public async Task<FileItem?> GetFileByIdAsync(string id)
        {
            await InitializeAsync();
            var userId = GetCurrentUserId();
            return await _database!.Table<FileItem>()
                .Where(f => f.UserId == userId && f.Id == id)
                .FirstOrDefaultAsync();
        }

        public async Task<List<FileItem>> SearchFilesAsync(string searchTerm)
        {
            await InitializeAsync();
            var userId = GetCurrentUserId();
            return await _database!.Table<FileItem>()
                .Where(f => f.UserId == userId && (f.FileName.Contains(searchTerm) || f.Category.Contains(searchTerm)))
                .OrderByDescending(f => f.CreatedDate)
                .ToListAsync();
        }

        public async Task<bool> AddFileAsync(FileItem file)
        {
            try
            {
                await InitializeAsync();
                file.Id = Guid.NewGuid().ToString();
                file.UserId = GetCurrentUserId();
                file.CreatedDate = DateTime.Now;

                var result = await _database!.InsertAsync(file);
                return result > 0;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding file: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> UpdateFileAsync(FileItem file)
        {
            try
            {
                await InitializeAsync();
                var result = await _database!.UpdateAsync(file);
                return result > 0;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating file: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> DeleteFileAsync(string id)
        {
            try
            {
                await InitializeAsync();
                var file = await GetFileByIdAsync(id);
                if (file != null)
                {
                    if (File.Exists(file.FilePath))
                    {
                        File.Delete(file.FilePath);
                    }

                    await _database!.Table<FileReminderLog>()
                        .Where(l => l.FileId == id)
                        .DeleteAsync();

                    var result = await _database!.DeleteAsync(file);
                    return result > 0;
                }
                return false;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error deleting file: {ex.Message}");
                return false;
            }
        }

        public async Task<List<FileItem>> GetFilesWithRemindersAsync()
        {
            await InitializeAsync();
            var userId = GetCurrentUserId();
            return await _database!.Table<FileItem>()
                .Where(f => f.UserId == userId && f.HasReminder && f.ReminderDate > DateTime.Now)
                .OrderBy(f => f.ReminderDate)
                .ToListAsync();
        }

        public async Task<List<FileItem>> GetOverdueRemindersAsync()
        {
            await InitializeAsync();
            var userId = GetCurrentUserId();
            return await _database!.Table<FileItem>()
                .Where(f => f.UserId == userId && f.HasReminder && f.ReminderDate <= DateTime.Now)
                .OrderBy(f => f.ReminderDate)
                .ToListAsync();
        }

        public async Task<bool> SetFileReminderAsync(string fileId, DateTime reminderDate)
        {
            try
            {
                await InitializeAsync();
                var file = await GetFileByIdAsync(fileId);
                if (file != null && file.UserId == GetCurrentUserId())
                {
                    file.HasReminder = true;
                    file.ReminderDate = reminderDate;
                    var result = await _database!.UpdateAsync(file);

                    if (result > 0)
                    {
                        await AddReminderLogAsync(fileId, reminderDate);
                        return true;
                    }
                }
                return false;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error setting reminder: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> RemoveFileReminderAsync(string fileId)
        {
            try
            {
                await InitializeAsync();
                var file = await GetFileByIdAsync(fileId);
                if (file != null && file.UserId == GetCurrentUserId())
                {
                    file.HasReminder = false;
                    file.ReminderDate = null;
                    var result = await _database!.UpdateAsync(file);
                    return result > 0;
                }
                return false;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error removing reminder: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> AddReminderLogAsync(string fileId, DateTime reminderTime)
        {
            try
            {
                await InitializeAsync();
                var log = new FileReminderLog
                {
                    Id = Guid.NewGuid().ToString(),
                    FileId = fileId,
                    ReminderTime = reminderTime,
                    IsNotified = false,
                    CreatedDate = DateTime.Now
                };
                var result = await _database!.InsertAsync(log);
                return result > 0;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding reminder log: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> UpdateReminderLogAsync(string fileId, string action)
        {
            try
            {
                await InitializeAsync();
                var log = await _database!.Table<FileReminderLog>()
                    .Where(l => l.FileId == fileId && !l.IsNotified)
                    .OrderByDescending(l => l.ReminderTime)
                    .FirstOrDefaultAsync();

                if (log != null)
                {
                    log.IsNotified = true;
                    log.NotifiedTime = DateTime.Now;
                    log.Action = action;
                    var result = await _database!.UpdateAsync(log);
                    return result > 0;
                }
                return false;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating reminder log: {ex.Message}");
                return false;
            }
        }

        public async Task<long> GetTotalStorageUsedAsync()
        {
            await InitializeAsync();
            var files = await GetAllFilesAsync();
            return files.Sum(f => f.Size);
        }

        public async Task<bool> DeleteAllFilesAsync()
        {
            try
            {
                await InitializeAsync();
                var userId = GetCurrentUserId();
                var files = await _database!.Table<FileItem>()
                    .Where(f => f.UserId == userId)
                    .ToListAsync();

                foreach (var file in files)
                {
                    if (File.Exists(file.FilePath))
                    {
                        File.Delete(file.FilePath);
                    }
                }

                await _database!.Table<FileItem>()
                    .Where(f => f.UserId == userId)
                    .DeleteAsync();

                return true;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error deleting all files: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> UpdateFileCategoryAsync(string fileId, string newCategory)
        {
            try
            {
                await InitializeAsync();
                var file = await GetFileByIdAsync(fileId);
                if (file != null && file.UserId == GetCurrentUserId())
                {
                    file.Category = newCategory;
                    var result = await _database!.UpdateAsync(file);
                    return result > 0;
                }
                return false;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating file category: {ex.Message}");
                return false;
            }
        }

        public void ClearCurrentUser()
        {
            _currentUserId = string.Empty;
        }
    }
}