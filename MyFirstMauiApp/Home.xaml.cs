using MyFirstMauiApp.Models;
using MyFirstMauiApp.Services;
using MyFirstMauiApp.ViewModels;
using SmartScheduler.Services;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Collections.Specialized;

namespace MyFirstMauiApp;

public partial class Home : ContentPage
{
    private StudyTasksViewModel _studyViewModel;
    private WishlistViewModel _wishlistViewModel;
    private PersonalViewModel _personalViewModel;
    private EventViewModel _eventViewModel;
    private readonly FirebaseService? _firebaseService;

    // Add collection for today's tasks
    private ObservableCollection<TodayScheduleItem> _todaySchedule = new();

    // Add property for welcome message
    private string _welcomeMessage = string.Empty;
    public string WelcomeMessage
    {
        get => _welcomeMessage;
        set
        {
            _welcomeMessage = value;
            OnPropertyChanged(nameof(WelcomeMessage));
        }
    }

    // Add property for checking if more than 4 tasks exist
    private bool _hasMoreThanFourTasks;
    public bool HasMoreThanFourTasks
    {
        get => _hasMoreThanFourTasks;
        set
        {
            _hasMoreThanFourTasks = value;
            OnPropertyChanged(nameof(HasMoreThanFourTasks));
        }
    }

    public Home()
    {
        InitializeComponent();

        _firebaseService = App.FirebaseService;

        // Initialize ViewModels
        _studyViewModel = new StudyTasksViewModel();
        _wishlistViewModel = new WishlistViewModel();
        _personalViewModel = new PersonalViewModel();
        _eventViewModel = new EventViewModel();

        // Subscribe to ViewModel changes
        SubscribeToViewModelChanges();

        // Set binding context
        BindingContext = this;

        // Set welcome message
        UpdateWelcomeMessage();

        // Load data
        LoadDataAsync();
    }

    // Subscribe to changes in ViewModels
    private void SubscribeToViewModelChanges()
    {
        if (_studyViewModel != null)
        {
            _studyViewModel.PropertyChanged += OnViewModelPropertyChanged;
            if (_studyViewModel.Tasks != null)
                _studyViewModel.Tasks.CollectionChanged += OnTasksCollectionChanged;
        }

        if (_wishlistViewModel != null)
        {
            _wishlistViewModel.PropertyChanged += OnViewModelPropertyChanged;
            if (_wishlistViewModel.WishlistItems != null)
                _wishlistViewModel.WishlistItems.CollectionChanged += OnWishlistCollectionChanged;
        }

        if (_personalViewModel != null)
        {
            _personalViewModel.PropertyChanged += OnViewModelPropertyChanged;
            if (_personalViewModel.Activities != null)
                _personalViewModel.Activities.CollectionChanged += OnActivitiesCollectionChanged;
        }

        if (_eventViewModel != null)
        {
            _eventViewModel.PropertyChanged += OnViewModelPropertyChanged;
            if (_eventViewModel.UpcomingEvents != null)
                _eventViewModel.UpcomingEvents.CollectionChanged += OnEventsCollectionChanged;
        }
    }

    private void OnViewModelPropertyChanged(object? sender, PropertyChangedEventArgs e)
    {
        // Refresh when any ViewModel property changes
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            RefreshTodaySchedule();
            OnPropertyChanged(nameof(StudyViewModel));
            OnPropertyChanged(nameof(WishlistViewModel));
            OnPropertyChanged(nameof(PersonalViewModel));
            OnPropertyChanged(nameof(EventViewModel));
        });
    }

    private void OnTasksCollectionChanged(object? sender, NotifyCollectionChangedEventArgs e)
    {
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() => RefreshTodaySchedule());
    }

    private void OnWishlistCollectionChanged(object? sender, NotifyCollectionChangedEventArgs e)
    {
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() => RefreshTodaySchedule());
    }

    private void OnActivitiesCollectionChanged(object? sender, NotifyCollectionChangedEventArgs e)
    {
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() => RefreshTodaySchedule());
    }

    private void OnEventsCollectionChanged(object? sender, NotifyCollectionChangedEventArgs e)
    {
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() => RefreshTodaySchedule());
    }

    // Method to update welcome message based on current user
    public void UpdateWelcomeMessage()
    {
        var currentUser = _firebaseService?.CurrentUser;
        if (currentUser != null && !string.IsNullOrEmpty(currentUser.DisplayName))
        {
            WelcomeMessage = $"Welcome back, {currentUser.DisplayName} 👋";
        }
        else if (currentUser != null && !string.IsNullOrEmpty(currentUser.Username))
        {
            WelcomeMessage = $"Welcome back, {currentUser.Username} 👋";
        }
        else
        {
            WelcomeMessage = "Welcome back! 👋";
        }
    }

    // Public properties for binding
    public StudyTasksViewModel StudyViewModel => _studyViewModel;
    public WishlistViewModel WishlistViewModel => _wishlistViewModel;
    public PersonalViewModel PersonalViewModel => _personalViewModel;
    public EventViewModel EventViewModel => _eventViewModel;

    // Public property for today's schedule
    public ObservableCollection<TodayScheduleItem> TodaySchedule
    {
        get => _todaySchedule;
        set
        {
            _todaySchedule = value;
            OnPropertyChanged(nameof(TodaySchedule));
            OnPropertyChanged(nameof(HasTodayTasks));
        }
    }

    public bool HasTodayTasks => _todaySchedule?.Count > 0;

    public DateTime CurrentDate => DateTime.Today;

    private async void LoadDataAsync()
    {
        try
        {
            // Load all data
            await Task.WhenAll(
                _studyViewModel.LoadTasks(),
                _wishlistViewModel.LoadItemsAsync(),
                _personalViewModel.LoadActivitiesAsync(),
                _eventViewModel.LoadEventsAsync()
            );

            // Update UI after data loads
            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
            {
                OnPropertyChanged(nameof(StudyViewModel));
                OnPropertyChanged(nameof(WishlistViewModel));
                OnPropertyChanged(nameof(PersonalViewModel));
                OnPropertyChanged(nameof(EventViewModel));

                // Refresh today's schedule
                RefreshTodaySchedule();
            });
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error loading data: {ex.Message}");
        }
    }

    // Method to refresh today's schedule
    private void RefreshTodaySchedule()
    {
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            _todaySchedule.Clear();
            var today = DateTime.Today;

            // Add Study Tasks for today
            if (_studyViewModel.Tasks != null)
            {
                foreach (var task in _studyViewModel.Tasks)
                {
                    if (task.ScheduledDateTime.Date == today && !task.IsCompleted)
                    {
                        _todaySchedule.Add(new TodayScheduleItem
                        {
                            Title = task.Title ?? "",
                            Description = task.Description ?? "",
                            Time = task.ScheduledDateTime,
                            Icon = GetIconForType("Study"),
                            Type = "Study",
                            Color = "#9D4EDD",
                            BackgroundColor = "#F3E8FF",
                            IsCompleted = task.IsCompleted,
                            Priority = task.Priority ?? "Medium",
                            Id = task.Id
                        });
                    }
                }
            }

            // Add Wishlist items with target date today
            if (_wishlistViewModel.WishlistItems != null)
            {
                foreach (var item in _wishlistViewModel.WishlistItems)
                {
                    if (item.TargetDate.Date == today && item.Status != "Bought")
                    {
                        _todaySchedule.Add(new TodayScheduleItem
                        {
                            Title = item.ItemName ?? "",
                            Description = item.Description ?? item.PriorityLevel ?? "Wishlist item",
                            Time = item.TargetDate,
                            Icon = "🎁",
                            Type = "Wishlist",
                            Color = "#10B981",
                            BackgroundColor = "#E7F5E9",
                            IsCompleted = item.Status == "Bought",
                            Priority = item.PriorityLevel ?? "Medium",
                            Id = item.Id
                        });
                    }
                }
            }

            // Add Personal Activities for today
            if (_personalViewModel.Activities != null)
            {
                foreach (var activity in _personalViewModel.Activities)
                {
                    var activityDateTime = activity.Date.Date + activity.Time;
                    if (activityDateTime.Date == today && activity.Status != "Completed")
                    {
                        _todaySchedule.Add(new TodayScheduleItem
                        {
                            Title = activity.Title ?? "",
                            Description = activity.Category ?? "Personal",
                            Time = activityDateTime,
                            Icon = GetIconForCategory(activity.Category ?? "Other"),
                            Type = "Personal",
                            Color = "#F59E0B",
                            BackgroundColor = "#FEF3E2",
                            IsCompleted = activity.Status == "Completed",
                            Duration = activity.Duration,
                            Priority = "Medium",
                            Id = activity.Id
                        });
                    }
                }
            }

            // Add Events for today
            if (_eventViewModel.UpcomingEvents != null)
            {
                foreach (var eventItem in _eventViewModel.UpcomingEvents)
                {
                    var eventDateTime = eventItem.EventDate.Date + eventItem.EventTime;
                    if (eventDateTime.Date == today && !eventItem.IsCompleted)
                    {
                        _todaySchedule.Add(new TodayScheduleItem
                        {
                            Title = eventItem.Title ?? "",
                            Description = eventItem.Location ?? eventItem.Description ?? "Event",
                            Time = eventDateTime,
                            Icon = "📅",
                            Type = "Event",
                            Color = "#3B82F6",
                            BackgroundColor = "#E8F0FE",
                            IsCompleted = eventItem.IsCompleted,
                            Location = eventItem.Location ?? "",
                            Priority = "Medium",
                            Id = eventItem.Id
                        });
                    }
                }
            }

            // Sort by time
            var sorted = _todaySchedule.OrderBy(x => x.Time).ToList();
            _todaySchedule.Clear();
            foreach (var item in sorted)
            {
                _todaySchedule.Add(item);
            }

            // Update HasMoreThanFourTasks
            HasMoreThanFourTasks = _todaySchedule.Count > 4;

            OnPropertyChanged(nameof(TodaySchedule));
            OnPropertyChanged(nameof(HasTodayTasks));
        });
    }

    private string GetIconForType(string type)
    {
        return type switch
        {
            "Study" => "📚",
            "Wishlist" => "🎁",
            "Personal" => "🧍",
            "Event" => "📅",
            _ => "📌"
        };
    }

    private string GetIconForCategory(string category)
    {
        return category switch
        {
            "Exercise" => "🏃",
            "Self-Care" => "💆",
            "Hobby" => "🎨",
            "Routine" => "🔄",
            "Personal Goal" => "🎯",
            _ => "📝"
        };
    }

    // Navigation commands
    private async void OnStudyTapped(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new StudyTasksPage());
    }

    private async void OnWishlistTapped(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new WishlistPage());
    }

    private async void OnPersonalTapped(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Personal());
    }

    private async void OnEventsTapped(object sender, EventArgs e)
    {
        var eventsPage = new Event();
        await Navigation.PushAsync(eventsPage);
    }

    private async void OnAddNewTaskTapped(object sender, EventArgs e)
    {
        // Navigate to Study Tasks page by default when adding new task
        await Navigation.PushAsync(new StudyTasksPage());
    }

    // Add this method to refresh when page appears
    protected override void OnAppearing()
    {
        base.OnAppearing();

        // Update welcome message in case username changed
        UpdateWelcomeMessage();

        // Reload all data to ensure it's fresh
        LoadDataAsync();
    }

    // Clean up event handlers
    protected override void OnDisappearing()
    {
        base.OnDisappearing();

        if (_studyViewModel != null)
        {
            _studyViewModel.PropertyChanged -= OnViewModelPropertyChanged;
            if (_studyViewModel.Tasks != null)
                _studyViewModel.Tasks.CollectionChanged -= OnTasksCollectionChanged;
        }

        if (_wishlistViewModel != null)
        {
            _wishlistViewModel.PropertyChanged -= OnViewModelPropertyChanged;
            if (_wishlistViewModel.WishlistItems != null)
                _wishlistViewModel.WishlistItems.CollectionChanged -= OnWishlistCollectionChanged;
        }

        if (_personalViewModel != null)
        {
            _personalViewModel.PropertyChanged -= OnViewModelPropertyChanged;
            if (_personalViewModel.Activities != null)
                _personalViewModel.Activities.CollectionChanged -= OnActivitiesCollectionChanged;
        }

        if (_eventViewModel != null)
        {
            _eventViewModel.PropertyChanged -= OnViewModelPropertyChanged;
            if (_eventViewModel.UpcomingEvents != null)
                _eventViewModel.UpcomingEvents.CollectionChanged -= OnEventsCollectionChanged;
        }
    }
}

// Model for today's schedule items
public class TodayScheduleItem : BindableObject
{
    private string _id = string.Empty;
    private string _title = string.Empty;
    private string _description = string.Empty;
    private DateTime _time;
    private string _icon = string.Empty;
    private string _type = string.Empty;
    private string _color = string.Empty;
    private string _backgroundColor = string.Empty;
    private bool _isCompleted;
    private string _priority = string.Empty;
    private int _duration;
    private string _location = string.Empty;

    public string Id
    {
        get => _id;
        set
        {
            _id = value;
            OnPropertyChanged();
        }
    }

    public string Title
    {
        get => _title;
        set
        {
            _title = value;
            OnPropertyChanged();
        }
    }

    public string Description
    {
        get => _description;
        set
        {
            _description = value;
            OnPropertyChanged();
        }
    }

    public DateTime Time
    {
        get => _time;
        set
        {
            _time = value;
            OnPropertyChanged();
            OnPropertyChanged(nameof(TimeDisplay));
            OnPropertyChanged(nameof(TimeUntil));
            OnPropertyChanged(nameof(TimeUntilColor));
        }
    }

    public string Icon
    {
        get => _icon;
        set
        {
            _icon = value;
            OnPropertyChanged();
        }
    }

    public string Type
    {
        get => _type;
        set
        {
            _type = value;
            OnPropertyChanged();
        }
    }

    public string Color
    {
        get => _color;
        set
        {
            _color = value;
            OnPropertyChanged();
        }
    }

    public string BackgroundColor
    {
        get => _backgroundColor;
        set
        {
            _backgroundColor = value;
            OnPropertyChanged();
        }
    }

    public bool IsCompleted
    {
        get => _isCompleted;
        set
        {
            _isCompleted = value;
            OnPropertyChanged();
        }
    }

    public string Priority
    {
        get => _priority;
        set
        {
            _priority = value;
            OnPropertyChanged();
        }
    }

    public int Duration
    {
        get => _duration;
        set
        {
            _duration = value;
            OnPropertyChanged();
        }
    }

    public string Location
    {
        get => _location;
        set
        {
            _location = value;
            OnPropertyChanged();
        }
    }

    public string TimeDisplay => Time.ToString("h:mm tt");

    public string TimeUntil
    {
        get
        {
            var diff = Time - DateTime.Now;
            if (diff.TotalHours < 0) return "overdue";
            if (diff.TotalHours < 1) return $"in {diff.Minutes}m";
            if (diff.TotalHours < 24) return $"in {diff.Hours}h";
            return Time.ToString("MMM d");
        }
    }

    public Color TimeUntilColor
    {
        get
        {
            var diff = Time - DateTime.Now;
            if (diff.TotalHours < 0) return Colors.Red;
            if (diff.TotalHours < 2) return Colors.Orange;
            return Colors.Green;
        }
    }
}