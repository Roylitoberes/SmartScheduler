using Firebase.Auth;
using Firebase.Auth.Providers;
using Firebase.Database;
using Firebase.Database.Query;
using Firebase.Storage;
using MyFirstMauiApp.Models;
using MyUser = MyFirstMauiApp.Models.User;

namespace SmartScheduler.Services
{
    public class FirebaseService
    {
        private readonly string apiKey = "AIzaSyCV2lPS7M19pO7vfiFvU9DAvE7LPebxR5s";
        private readonly string authDomain = "apps-a9151.firebaseapp.com";
        private readonly string databaseURL = "https://apps-a9151-default-rtdb.firebaseio.com/";
        private readonly string storageBucket = "apps-a9151.appspot.com";

        private FirebaseAuthClient _authClient;
        private FirebaseClient _database;
        private FirebaseStorage _storage;
        private MyUser? _currentUser;
        private string? _idToken;

        public MyUser? CurrentUser => _currentUser;

        public FirebaseService()
        {
            _authClient = new FirebaseAuthClient(new FirebaseAuthConfig
            {
                ApiKey = apiKey,
                AuthDomain = authDomain,
                Providers = new FirebaseAuthProvider[]
                {
                    new EmailProvider()
                }
            });

            _database = new FirebaseClient(databaseURL);
            _storage = new FirebaseStorage(storageBucket);
        }

        public FirebaseClient GetAuthDatabase()
        {
            if (string.IsNullOrEmpty(_idToken))
                return _database;

            return new FirebaseClient(databaseURL, new FirebaseOptions
            {
                AuthTokenAsyncFactory = () => Task.FromResult(_idToken)
            });
        }

        public async Task<(bool success, string message, MyUser? user)> RegisterWithEmail(string email, string password, string username)
        {
            try
            {
                // Check if user already exists by trying to sign in with dummy password
                try
                {
                    var existingUser = await _authClient.SignInWithEmailAndPasswordAsync(email, "dummy_password");
                    // If we get here, user exists with correct password? Actually this will throw wrong password
                }
                catch (FirebaseAuthException ex) when (ex.Reason == AuthErrorReason.WrongPassword)
                {
                    // User exists but password is wrong - email is already taken
                    return (false, "This email address is already registered. Please use a different email or login instead.", null);
                }
                catch (FirebaseAuthException ex) when (ex.Reason == AuthErrorReason.UserNotFound)
                {
                    // User doesn't exist - continue with registration
                }
                catch
                {
                    // Continue with registration
                }

                var userCredential = await _authClient.CreateUserWithEmailAndPasswordAsync(email, password);
                string uid = userCredential.User.Uid;

                _idToken = await userCredential.User.GetIdTokenAsync();

                var user = new MyUser
                {
                    Id = uid,
                    Email = email,
                    Username = username,
                    DisplayName = username,
                    ProfilePicture = "default_avatar.png"
                };

                var authDb = GetAuthDatabase();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Profile")
                    .PutAsync(user);

                // Create a complete user profile object with password included
                var userProfileWithPassword = new
                {
                    Id = uid,
                    Email = email,
                    Username = username,
                    DisplayName = username,
                    ProfilePicture = "default_avatar.png",
                    Password = password
                };

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Profile")
                    .PutAsync(userProfileWithPassword);

                await CreateEmptyUserCollections(uid, authDb);

                _currentUser = user;

                return (true, "Registration successful", user);
            }
            catch (FirebaseAuthException ex)
            {
                // Check for specific Firebase Auth errors
                if (ex.Reason == AuthErrorReason.EmailExists)
                {
                    return (false, "This email address is already registered. Please use a different email or login instead.", null);
                }
                else if (ex.Reason == AuthErrorReason.WeakPassword)
                {
                    return (false, "Password is too weak. Please use a stronger password (at least 6 characters).", null);
                }
                return (false, $"Registration failed: {ex.Reason}", null);
            }
            catch (Exception ex)
            {
                // Check for email format error in exception message
                if (ex.Message.Contains("email") && ex.Message.Contains("invalid"))
                {
                    return (false, "Invalid email address. Please enter a valid email.", null);
                }
                return (false, $"Registration failed: {ex.Message}", null);
            }
        }

        public async Task<(bool success, string message, MyUser? user)> LoginWithEmail(string email, string password)
        {
            try
            {
                var userCredential = await _authClient.SignInWithEmailAndPasswordAsync(email, password);
                string uid = userCredential.User.Uid;

                _idToken = await userCredential.User.GetIdTokenAsync();

                var authDb = GetAuthDatabase();

                var user = await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Profile")
                    .OnceSingleAsync<MyUser>();

                if (user != null)
                {
                    user.Id = uid;
                    _currentUser = user;
                    return (true, "Login successful", user);
                }
                else
                {
                    return (false, "User data not found", null);
                }
            }
            catch (FirebaseAuthException ex)
            {
                if (ex.Reason == AuthErrorReason.WrongPassword)
                {
                    return (false, "Incorrect password. Please try again.", null);
                }
                else if (ex.Reason == AuthErrorReason.UserNotFound)
                {
                    return (false, "No account found with this email. Please register first.", null);
                }
                return (false, $"Login failed: {ex.Reason}", null);
            }
            catch (Exception ex)
            {
                return (false, $"Login failed: {ex.Message}", null);
            }
        }

        private async Task CreateEmptyUserCollections(string uid, FirebaseClient authDb)
        {
            try
            {
                var tasks = new List<Task>
                {
                    authDb.Child("Users").Child(uid).Child("Skills").PutAsync(new List<object>()),
                    authDb.Child("Users").Child(uid).Child("Tasks").PutAsync(new List<object>()),
                    authDb.Child("Users").Child(uid).Child("Wishlist").PutAsync(new List<object>()),
                    authDb.Child("Users").Child(uid).Child("Notifications").PutAsync(new List<object>()),
                    authDb.Child("Users").Child(uid).Child("StudyTasks").PutAsync(new List<object>()),
                    authDb.Child("Users").Child(uid).Child("Activities").PutAsync(new List<object>()),
                    authDb.Child("Users").Child(uid).Child("Events").PutAsync(new List<object>())
                };

                await Task.WhenAll(tasks);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error creating collections: {ex.Message}");
            }
        }

        public void Logout()
        {
            _authClient.SignOut();
            _currentUser = null;
            _idToken = null;
        }

        public bool IsUserLoggedIn()
        {
            return _currentUser != null;
        }

        private string GetCurrentUserId()
        {
            if (_currentUser == null)
                throw new Exception("No user logged in");
            return _currentUser.Id!;
        }

        private FirebaseClient GetCurrentAuthDb()
        {
            if (string.IsNullOrEmpty(_idToken))
                throw new Exception("No authenticated user");

            return new FirebaseClient(databaseURL, new FirebaseOptions
            {
                AuthTokenAsyncFactory = () => Task.FromResult(_idToken)
            });
        }

        public async Task<bool> UpdateUserProfileAsync(string userId, object updatedProfile)
        {
            try
            {
                var authDb = GetAuthDatabase();
                await authDb
                    .Child("Users")
                    .Child(userId)
                    .Child("Profile")
                    .PutAsync(updatedProfile);

                if (_currentUser != null && _currentUser.Id == userId)
                {
                    var updatedUser = updatedProfile as dynamic;
                    if (updatedUser != null)
                    {
                        _currentUser.Username = updatedUser.Username;
                        _currentUser.DisplayName = updatedUser.DisplayName;
                        _currentUser.Email = updatedUser.Email;
                        _currentUser.ProfilePicture = updatedUser.ProfilePicture;
                    }
                }

                return true;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating profile: {ex.Message}");
                return false;
            }
        }

        public async Task<bool> UpdateUserPasswordAsync(string userId, string newPassword)
        {
            try
            {
                var authDb = GetAuthDatabase();

                // First get the current user profile
                var userProfile = await authDb
                    .Child("Users")
                    .Child(userId)
                    .Child("Profile")
                    .OnceSingleAsync<dynamic>();

                // Create updated profile with new password
                var updatedProfile = new
                {
                    Id = userProfile.Id,
                    Email = userProfile.Email,
                    Username = userProfile.Username,
                    DisplayName = userProfile.DisplayName,
                    ProfilePicture = userProfile.ProfilePicture ?? "default_avatar.png",
                    Password = newPassword
                };

                await authDb
                    .Child("Users")
                    .Child(userId)
                    .Child("Profile")
                    .PutAsync(updatedProfile);

                System.Diagnostics.Debug.WriteLine($"✅ Password updated for user: {userId}");
                return true;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"❌ Error updating password: {ex.Message}");
                return false;
            }
        }

        public async Task<string> UploadProfilePictureAsync(string userId, Stream imageStream, string fileName)
        {
            try
            {
                var storage = new FirebaseStorage(storageBucket);
                var imageUrl = await storage
                    .Child("profile_pictures")
                    .Child($"{userId}_{fileName}")
                    .PutAsync(imageStream);

                var authDb = GetAuthDatabase();
                await authDb
                    .Child("Users")
                    .Child(userId)
                    .Child("Profile")
                    .Child("ProfilePicture")
                    .PutAsync(imageUrl);

                if (_currentUser != null)
                {
                    _currentUser.ProfilePicture = imageUrl;
                }

                return imageUrl;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error uploading profile picture: {ex.Message}");
                return string.Empty;
            }
        }

        public async Task<string> GetProfilePictureUrlAsync(string userId)
        {
            try
            {
                var authDb = GetAuthDatabase();
                var profile = await authDb
                    .Child("Users")
                    .Child(userId)
                    .Child("Profile")
                    .OnceSingleAsync<MyUser>();

                return profile?.ProfilePicture ?? "default_avatar.png";
            }
            catch
            {
                return "default_avatar.png";
            }
        }

        // ============ STUDY TASKS ============
        public async Task<List<StudyTask>> GetStudyTasks()
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                var result = await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("StudyTasks")
                    .OnceAsync<StudyTask>();

                return result.Select(x => x.Object).ToList();
            }
            catch
            {
                return new List<StudyTask>();
            }
        }

        public async Task AddStudyTask(StudyTask task)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                task.Id = Guid.NewGuid().ToString();
                task.UserId = uid;

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("StudyTasks")
                    .Child(task.Id)
                    .PutAsync(task);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding task: {ex.Message}");
            }
        }

        public async Task UpdateStudyTask(StudyTask task)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("StudyTasks")
                    .Child(task.Id)
                    .PutAsync(task);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating task: {ex.Message}");
            }
        }

        public async Task DeleteStudyTask(string taskId)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("StudyTasks")
                    .Child(taskId)
                    .DeleteAsync();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error deleting task: {ex.Message}");
            }
        }

        // ============ WISHLIST ITEMS ============
        public async Task<List<WishlistItem>> GetWishlistItems()
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                var result = await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Wishlist")
                    .OnceAsync<WishlistItem>();

                return result.Select(x => x.Object).ToList();
            }
            catch
            {
                return new List<WishlistItem>();
            }
        }

        public async Task AddWishlistItem(WishlistItem item)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                item.Id = Guid.NewGuid().ToString();
                item.UserId = uid;

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Wishlist")
                    .Child(item.Id)
                    .PutAsync(item);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding wishlist item: {ex.Message}");
            }
        }

        public async Task UpdateWishlistItem(WishlistItem item)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Wishlist")
                    .Child(item.Id)
                    .PutAsync(item);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating wishlist item: {ex.Message}");
            }
        }

        public async Task DeleteWishlistItem(string itemId)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Wishlist")
                    .Child(itemId)
                    .DeleteAsync();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error deleting wishlist item: {ex.Message}");
            }
        }

        // ============ PERSONAL ACTIVITIES ============
        public async Task<List<PersonalActivity>> GetPersonalActivities()
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                var result = await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Activities")
                    .OnceAsync<PersonalActivity>();

                return result.Select(x => x.Object).ToList();
            }
            catch
            {
                return new List<PersonalActivity>();
            }
        }

        public async Task AddPersonalActivity(PersonalActivity activity)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                activity.Id = Guid.NewGuid().ToString();
                activity.UserId = uid;

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Activities")
                    .Child(activity.Id)
                    .PutAsync(activity);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding activity: {ex.Message}");
            }
        }

        public async Task UpdatePersonalActivity(PersonalActivity activity)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Activities")
                    .Child(activity.Id)
                    .PutAsync(activity);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating activity: {ex.Message}");
            }
        }

        public async Task DeletePersonalActivity(string activityId)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Activities")
                    .Child(activityId)
                    .DeleteAsync();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error deleting activity: {ex.Message}");
            }
        }

        // ============ EVENTS ============
        public async Task<List<EventItem>> GetEvents()
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                var result = await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Events")
                    .OnceAsync<EventItem>();

                return result.Select(x => x.Object).ToList();
            }
            catch
            {
                return new List<EventItem>();
            }
        }

        public async Task AddEvent(EventItem eventItem)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                eventItem.Id = Guid.NewGuid().ToString();
                eventItem.UserId = uid;

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Events")
                    .Child(eventItem.Id)
                    .PutAsync(eventItem);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding event: {ex.Message}");
            }
        }

        public async Task UpdateEvent(EventItem eventItem)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Events")
                    .Child(eventItem.Id)
                    .PutAsync(eventItem);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error updating event: {ex.Message}");
            }
        }

        public async Task DeleteEvent(string eventId)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Events")
                    .Child(eventId)
                    .DeleteAsync();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error deleting event: {ex.Message}");
            }
        }

        // ============ NOTIFICATIONS ============
        public async Task<List<Notification>> GetNotifications()
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                var result = await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Notifications")
                    .OnceAsync<Notification>();

                return result.Select(x => x.Object).ToList();
            }
            catch
            {
                return new List<Notification>();
            }
        }

        public async Task AddNotification(Notification notification)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                notification.Id = Guid.NewGuid().ToString();
                notification.UserId = uid;
                notification.Timestamp = DateTime.UtcNow;

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Notifications")
                    .Child(notification.Id)
                    .PutAsync(notification);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error adding notification: {ex.Message}");
            }
        }

        public async Task MarkNotificationAsRead(string notificationId)
        {
            try
            {
                var uid = GetCurrentUserId();
                var authDb = GetCurrentAuthDb();

                await authDb
                    .Child("Users")
                    .Child(uid)
                    .Child("Notifications")
                    .Child(notificationId)
                    .Child("IsRead")
                    .PutAsync(true);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error marking notification as read: {ex.Message}");
            }
        }
    }
}