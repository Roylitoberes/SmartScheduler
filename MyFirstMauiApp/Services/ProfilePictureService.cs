using System.Diagnostics;
using MyFirstMauiApp.Models;
using SmartScheduler.Services;

namespace MyFirstMauiApp.Services
{
    public class ProfilePictureService
    {
        private readonly FirebaseService _firebaseService;
        private readonly LocalDatabaseService _localDb;
        private readonly string _imagesFolder;

        public ProfilePictureService(FirebaseService firebaseService)
        {
            _firebaseService = firebaseService;
            _localDb = new LocalDatabaseService();
            _imagesFolder = Path.Combine(FileSystem.AppDataDirectory, "profile_images");

            if (!Directory.Exists(_imagesFolder))
            {
                Directory.CreateDirectory(_imagesFolder);
            }
        }

        // Pick image from gallery
        public async Task<FileResult?> PickImageAsync()
        {
            try
            {
                var results = await MediaPicker.PickPhotosAsync(new MediaPickerOptions
                {
                    Title = "Pick a profile picture"
                });

                return results?.FirstOrDefault();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error picking image: {ex.Message}");
                return null;
            }
        }

        // Take photo with camera
        public async Task<FileResult?> TakePhotoAsync()
        {
            try
            {
                var result = await MediaPicker.CapturePhotoAsync();
                return result;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error taking photo: {ex.Message}");
                return null;
            }
        }

        // Save image locally
        private async Task<string?> SaveImageLocallyAsync(FileResult file, string userId)
        {
            try
            {
                var localFileName = $"{userId}_{DateTime.Now.Ticks}.jpg";
                var localPath = Path.Combine(_imagesFolder, localFileName);

                using (var stream = await file.OpenReadAsync())
                using (var fileStream = File.Create(localPath))
                {
                    await stream.CopyToAsync(fileStream);
                }

                return localPath;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error saving image locally: {ex.Message}");
                return null;
            }
        }

        // Take photo and save directly to SQLite
        public async Task<(bool success, string message, string localPath)> TakePhotoAndSaveAsync(string userId)
        {
            try
            {
                var photo = await TakePhotoAsync();
                if (photo == null)
                {
                    return (false, "No photo taken", string.Empty);
                }

                return await SaveImageToLocalAndDatabaseAsync(photo, userId);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error taking photo: {ex.Message}");
                return (false, $"Error: {ex.Message}", string.Empty);
            }
        }

        // Pick image and save directly to SQLite
        public async Task<(bool success, string message, string localPath)> PickImageAndSaveAsync(string userId)
        {
            try
            {
                var image = await PickImageAsync();
                if (image == null)
                {
                    return (false, "No image selected", string.Empty);
                }

                return await SaveImageToLocalAndDatabaseAsync(image, userId);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error picking image: {ex.Message}");
                return (false, $"Error: {ex.Message}", string.Empty);
            }
        }

        // Save image to local storage and database
        private async Task<(bool success, string message, string localPath)> SaveImageToLocalAndDatabaseAsync(FileResult file, string userId)
        {
            try
            {
                var localPath = await SaveImageLocallyAsync(file, userId);
                if (string.IsNullOrEmpty(localPath))
                {
                    return (false, "Failed to save image locally", string.Empty);
                }

                var updated = await _localDb.UpdateProfilePictureAsync(userId, localPath, localPath);

                if (updated)
                {
                    return (true, "Profile picture updated successfully", localPath);
                }
                else
                {
                    var user = _firebaseService.CurrentUser;
                    if (user != null)
                    {
                        var newProfile = new UserProfile
                        {
                            UserId = userId,
                            Username = user.Username ?? "",
                            Email = user.Email ?? "",
                            DisplayName = user.DisplayName ?? "",
                            ProfilePicturePath = localPath,
                            ProfilePictureUrl = localPath,
                            IsSynced = true
                        };
                        await _localDb.SaveProfileAsync(newProfile);
                        return (true, "Profile picture updated successfully", localPath);
                    }
                    return (false, "Failed to update profile", string.Empty);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error saving image: {ex.Message}");
                return (false, $"Error: {ex.Message}", string.Empty);
            }
        }

        // Get profile picture path
        public async Task<string> GetProfilePicturePathAsync(string userId)
        {
            var profile = await _localDb.GetProfileAsync(userId);
            if (profile != null && !string.IsNullOrEmpty(profile.ProfilePicturePath))
            {
                if (File.Exists(profile.ProfilePicturePath))
                {
                    return profile.ProfilePicturePath;
                }
            }
            return "default_avatar.png";
        }

        // Get profile picture URL
        public async Task<string> GetProfilePictureUrlAsync(string userId)
        {
            var profile = await _localDb.GetProfileAsync(userId);
            if (profile != null && !string.IsNullOrEmpty(profile.ProfilePictureUrl))
            {
                return profile.ProfilePictureUrl;
            }
            return "default_avatar.png";
        }

        // Load profile picture on login
        public async Task LoadUserProfileOnLogin(string userId)
        {
            var profile = await _localDb.GetProfileAsync(userId);
            if (profile == null)
            {
                var user = _firebaseService.CurrentUser;
                if (user != null)
                {
                    var newProfile = new UserProfile
                    {
                        UserId = userId,
                        Username = user.Username ?? "",
                        Email = user.Email ?? "",
                        DisplayName = user.DisplayName ?? "",
                        ProfilePicturePath = "default_avatar.png",
                        ProfilePictureUrl = "default_avatar.png",
                        IsSynced = true
                    };
                    await _localDb.SaveProfileAsync(newProfile);
                }
            }
        }

        // Delete profile picture
        public async Task<bool> DeleteProfilePictureAsync(string userId)
        {
            try
            {
                var profile = await _localDb.GetProfileAsync(userId);
                if (profile != null && !string.IsNullOrEmpty(profile.ProfilePicturePath))
                {
                    if (File.Exists(profile.ProfilePicturePath) && profile.ProfilePicturePath != "default_avatar.png")
                    {
                        File.Delete(profile.ProfilePicturePath);
                    }

                    profile.ProfilePicturePath = "default_avatar.png";
                    profile.ProfilePictureUrl = "default_avatar.png";
                    await _localDb.SaveProfileAsync(profile);

                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error deleting profile picture: {ex.Message}");
                return false;
            }
        }
    }
}