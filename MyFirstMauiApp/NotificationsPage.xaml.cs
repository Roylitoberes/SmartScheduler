using MyFirstMauiApp.Models;
using MyFirstMauiApp.Services;
using System.Collections.ObjectModel;

namespace MyFirstMauiApp;

public partial class NotificationsPage : ContentPage
{
    private ObservableCollection<object> CombinedNotifications { get; } = new ObservableCollection<object>();
    private ObservableCollection<StudyTask> StudyNotifications { get; } = new ObservableCollection<StudyTask>();
    // FIXED: Changed from StudyTask to WishlistItem
    private ObservableCollection<WishlistItem> WishlistNotifications { get; } = new ObservableCollection<WishlistItem>();
    private ObservableCollection<EventItem> EventNotifications { get; } = new ObservableCollection<EventItem>();
    private ObservableCollection<PersonalActivity> PersonalNotifications { get; } = new ObservableCollection<PersonalActivity>();

    public NotificationsPage()
    {
        InitializeComponent();

        Appearing += async (s, e) =>
        {
            await LoadAllNotificationsAsync();

            StudyNotifications.CollectionChanged += (sender, args) => RefreshCombined();
            WishlistNotifications.CollectionChanged += (sender, args) => RefreshCombined();
            EventNotifications.CollectionChanged += (sender, args) => RefreshCombined();
            PersonalNotifications.CollectionChanged += (sender, args) => RefreshCombined();
            PersonalNotificationService.ActivePersonalNotifications.CollectionChanged += (sender, args) => RefreshCombined();
        };
    }

    private async Task LoadAllNotificationsAsync()
    {
        try
        {
            // Load Study Tasks from StudyTaskService (Realtime Database)
            var studyTaskService = new StudyTaskService();
            var allTasks = await studyTaskService.GetTasksAsync();

            StudyNotifications.Clear();
            foreach (var task in allTasks.Where(t => !t.IsCompleted && t.ScheduledDateTime > DateTime.Now))
            {
                StudyNotifications.Add(task);
            }

            // Load Wishlist Items - FIXED: Use WishlistItem type
            WishlistNotifications.Clear();
            foreach (var item in WishlistNotificationService.ActiveWishlistNotifications)
            {
                WishlistNotifications.Add(item);
            }

            // Load Events
            var eventService = new EventService();
            var allEvents = await eventService.GetEventsAsync();

            EventNotifications.Clear();
            foreach (var ev in allEvents.Where(e => e.Status != "Completed"))
            {
                EventNotifications.Add(ev);
            }

            // Load Personal Activities
            var personalService = new PersonalActivityService();
            var allActivities = await personalService.GetActivitiesAsync();

            PersonalNotifications.Clear();
            foreach (var activity in allActivities.Where(a => a.Status != "Completed"))
            {
                PersonalNotifications.Add(activity);
            }

            RefreshCombined();
            NotificationsList.ItemsSource = CombinedNotifications;
        }
        catch (Exception ex)
        {
            await DisplayAlertAsync("Error", $"Failed to load notifications: {ex.Message}", "OK");
        }
    }

    private void RefreshCombined()
    {
        Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
        {
            CombinedNotifications.Clear();

            foreach (var t in StudyNotifications)
                CombinedNotifications.Add(t);

            foreach (var t in WishlistNotifications)
                CombinedNotifications.Add(t);

            foreach (var t in EventNotifications)
                CombinedNotifications.Add(t);

            foreach (var t in PersonalNotifications)
                CombinedNotifications.Add(t);
        });
    }

    private async void NotificationsList_SelectionChanged(object? sender, SelectionChangedEventArgs e)
    {
        var selectedItem = e.CurrentSelection.FirstOrDefault();
        if (selectedItem == null) return;

        if (selectedItem is StudyTask)
            await Shell.Current.GoToAsync("//StudyTasksPage");
        else if (selectedItem is WishlistItem)
            await Shell.Current.GoToAsync("//WishlistPage");
        else if (selectedItem is PersonalActivity)
            await Shell.Current.GoToAsync("//Personal");
        else if (selectedItem is EventItem)
            await Shell.Current.GoToAsync("//Event");

        if (sender is CollectionView collectionView)
        {
            collectionView.SelectedItem = null;
        }
    }

    private async void OnClearAllClicked(object? sender, EventArgs e)
    {
        NotificationService.ClearAll();
        WishlistNotificationService.ClearAll();
        PersonalNotificationService.ClearAll();
        EventNotificationService.ClearAll();

        await LoadAllNotificationsAsync();
    }
}