using System.Collections.ObjectModel;
using System.Windows.Input;
using MyFirstMauiApp.Models;
using MyFirstMauiApp.Services;
using MyFirstMauiApp.Views;
using Microsoft.Maui.ApplicationModel;

namespace MyFirstMauiApp.ViewModels;

public class EventViewModel : BindableObject
{
    private readonly EventService _eventService = new();
    private ObservableCollection<EventItem> _upcomingEvents = new();
    private ObservableCollection<EventItem> _completedEvents = new();
    private string _searchTextField = string.Empty;
    private bool _isBusy;
    private bool _isInitialized;
    private Page? _currentPage;
    private CancellationTokenSource? _searchCancellationTokenSource;

    // Snooze Options
    public List<int> SnoozeOptions { get; } = new() { 1, 5, 10, 15, 30, 60 };

    // Repeat Options
    public List<string> RepeatOptions { get; } = new()
    {
        "None",
        "Every 30 minutes",
        "Every 1 hour",
        "Every 4 hours",
        "Daily",
        "Weekly",
        "Monthly",
        "Weekdays",
        "Weekends"
    };

    public EventViewModel()
    {
        LoadEventsCommand = new Command(async () => await LoadEventsAsync(true));
        AddEventCommand = new Command(async () => await ShowEventPopupAsync(new EventItem()));
        EditEventCommand = new Command<EventItem>(async (item) => await ShowEventPopupAsync(item));
        DeleteEventCommand = new Command<string>(async (id) => await DeleteEventAsync(id));
        CompleteEventCommand = new Command<string>(async (id) => await CompleteEventAsync(id));
        ViewOnMapCommand = new Command<EventItem>(async (item) => await ViewOnMapAsync(item));
    }

    public ObservableCollection<EventItem> UpcomingEvents
    {
        get => _upcomingEvents;
        set
        {
            if (_upcomingEvents != value)
            {
                _upcomingEvents = value;
                OnPropertyChanged();
            }
        }
    }

    public ObservableCollection<EventItem> CompletedEvents
    {
        get => _completedEvents;
        set
        {
            if (_completedEvents != value)
            {
                _completedEvents = value;
                OnPropertyChanged();
            }
        }
    }

    public string SearchText
    {
        get => _searchTextField;
        set
        {
            if (_searchTextField != value)
            {
                _searchTextField = value;
                OnPropertyChanged();

                _searchCancellationTokenSource?.Cancel();
                _searchCancellationTokenSource = new CancellationTokenSource();

                Task.Delay(300, _searchCancellationTokenSource.Token)
                    .ContinueWith(t =>
                    {
                        if (!t.IsCanceled)
                        {
                            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(FilterEvents);
                        }
                    });
            }
        }
    }

    public bool IsBusy
    {
        get => _isBusy;
        set
        {
            if (_isBusy != value)
            {
                _isBusy = value;
                OnPropertyChanged();
            }
        }
    }

    public ICommand LoadEventsCommand { get; }
    public ICommand AddEventCommand { get; }
    public ICommand EditEventCommand { get; }
    public ICommand DeleteEventCommand { get; }
    public ICommand CompleteEventCommand { get; }
    public ICommand ViewOnMapCommand { get; }

    public void SetCurrentPage(Page page)
    {
        _currentPage = page;
    }

    public async Task LoadEventsAsync(bool forceRefresh = false)
    {
        if (IsBusy && !forceRefresh) return;

        try
        {
            IsBusy = true;

            var events = await _eventService.GetEventsAsync(forceRefresh);

            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
            {
                UpdateEventsCollections(events);
                _isInitialized = true;
            });
        }
        catch (Exception ex)
        {
            await ShowAlertAsync("Error", ex.Message, "OK");
        }
        finally
        {
            IsBusy = false;
        }
    }

    private void UpdateEventsCollections(List<EventItem> events)
    {
        var upcoming = events
            .Where(e => !e.IsCompleted)
            .OrderBy(e => e.GetFullDateTime())
            .ToList();

        var completed = events
            .Where(e => e.IsCompleted)
            .OrderByDescending(e => e.EventDate)
            .ToList();

        // Only update if collections have actually changed
        if (!AreCollectionsEqual(UpcomingEvents, upcoming) ||
            !AreCollectionsEqual(CompletedEvents, completed))
        {
            UpcomingEvents = new ObservableCollection<EventItem>(upcoming);
            CompletedEvents = new ObservableCollection<EventItem>(completed);
        }
    }

    // Helper method to check if collections are equal - improves performance
    private bool AreCollectionsEqual(ObservableCollection<EventItem> current, List<EventItem> newItems)
    {
        if (current.Count != newItems.Count) return false;

        for (int i = 0; i < current.Count; i++)
        {
            if (current[i].Id != newItems[i].Id ||
                current[i].Title != newItems[i].Title ||
                current[i].IsCompleted != newItems[i].IsCompleted ||
                current[i].EventDate != newItems[i].EventDate ||
                current[i].EventTime != newItems[i].EventTime)
            {
                return false;
            }
        }
        return true;
    }

    private void FilterEvents()
    {
        if (!_isInitialized) return;

        Task.Run(async () =>
        {
            var allEvents = await _eventService.GetEventsAsync(false);

            var filtered = string.IsNullOrWhiteSpace(SearchText)
                ? allEvents
                : allEvents.Where(e =>
                    e.Title.Contains(SearchText, StringComparison.OrdinalIgnoreCase) ||
                    e.Description.Contains(SearchText, StringComparison.OrdinalIgnoreCase) ||
                    e.Location.Contains(SearchText, StringComparison.OrdinalIgnoreCase))
                .ToList();

            Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
            {
                UpdateEventsCollections(filtered);
            });
        });
    }

    private async Task ShowEventPopupAsync(EventItem eventItem)
    {
        if (_currentPage == null) return;

        var isNewEvent = string.IsNullOrEmpty(eventItem.Id);
        var popup = await CreateEventPopupAsync(eventItem, isNewEvent);

        await _currentPage.Navigation.PushModalAsync(popup);
    }

    private async Task<ContentPage> CreateEventPopupAsync(EventItem eventItem, bool isNewEvent)
    {
        var popup = new ContentPage
        {
            Title = isNewEvent ? "Add Event" : "Edit Event",
            BackgroundColor = Colors.White
        };

        var editedEvent = new EventItem
        {
            Id = eventItem.Id,
            Title = eventItem.Title,
            Description = eventItem.Description,
            Location = eventItem.Location,
            EventDate = eventItem.EventDate,
            EventTime = eventItem.EventTime,
            SnoozeIntervalMinutes = eventItem.SnoozeIntervalMinutes,
            RepeatOption = eventItem.RepeatOption,
            Status = eventItem.Status,
            Priority = eventItem.Priority,
            Reminder = eventItem.Reminder
        };

        var layout = new VerticalStackLayout
        {
            Padding = 20,
            Spacing = 15
        };

        var titleEntry = new Entry
        {
            Text = editedEvent.Title,
            Placeholder = "Event title"
        };

        var descEntry = new Entry
        {
            Text = editedEvent.Description,
            Placeholder = "Description"
        };

        var locationEntry = new Entry
        {
            Text = editedEvent.Location,
            Placeholder = "Location"
        };

        var datePicker = new DatePicker
        {
            Date = editedEvent.EventDate
        };

        var timePicker = new TimePicker
        {
            Time = editedEvent.EventTime
        };

        var snoozePicker = new Picker
        {
            Title = "Snooze Interval",
            ItemsSource = SnoozeOptions
        };

        var repeatPicker = new Picker
        {
            Title = "Repeat",
            ItemsSource = RepeatOptions
        };

        snoozePicker.SelectedItem = SnoozeOptions.Contains(editedEvent.SnoozeIntervalMinutes)
            ? editedEvent.SnoozeIntervalMinutes
            : 5;

        repeatPicker.SelectedItem = RepeatOptions.Contains(editedEvent.RepeatOption)
            ? editedEvent.RepeatOption
            : "None";

        layout.Add(new Label { Text = "Title" });
        layout.Add(titleEntry);
        layout.Add(new Label { Text = "Description" });
        layout.Add(descEntry);
        layout.Add(new Label { Text = "Location" });
        layout.Add(locationEntry);
        layout.Add(new Label { Text = "Date" });
        layout.Add(datePicker);
        layout.Add(new Label { Text = "Time" });
        layout.Add(timePicker);
        layout.Add(new Label { Text = "Snooze" });
        layout.Add(snoozePicker);
        layout.Add(new Label { Text = "Repeat" });
        layout.Add(repeatPicker);

        var saveButton = new Button
        {
            Text = "Save Event",
            BackgroundColor = Color.FromArgb("#4F46E5"),
            TextColor = Colors.White
        };

        var cancelButton = new Button
        {
            Text = "Cancel"
        };

        layout.Add(saveButton);
        layout.Add(cancelButton);

        popup.Content = new ScrollView { Content = layout };

        cancelButton.Clicked += async (s, e) =>
        {
            await popup.Navigation.PopModalAsync();
        };

        saveButton.Clicked += async (s, e) =>
        {
            try
            {
                if (string.IsNullOrWhiteSpace(titleEntry.Text))
                {
                    await ShowAlertAsync("Validation", "Enter event title", "OK");
                    return;
                }

                editedEvent.Title = titleEntry.Text;
                editedEvent.Description = descEntry.Text ?? "";
                editedEvent.Location = locationEntry.Text ?? "";
                editedEvent.EventDate = (DateTime)datePicker.Date;
                editedEvent.EventTime = (TimeSpan)timePicker.Time;
                editedEvent.SnoozeIntervalMinutes = snoozePicker.SelectedIndex >= 0
                    ? SnoozeOptions[snoozePicker.SelectedIndex]
                    : 5;
                editedEvent.RepeatOption = repeatPicker.SelectedIndex >= 0
                    ? RepeatOptions[repeatPicker.SelectedIndex]
                    : "None";

                saveButton.IsEnabled = false;
                saveButton.Text = "Saving...";

                if (isNewEvent)
                {
                    await _eventService.AddEventAsync(editedEvent);
                }
                else
                {
                    await _eventService.UpdateEventAsync(editedEvent);
                }

                EventNotificationService.Cancel(editedEvent);
                EventNotificationService.Schedule(editedEvent);

                await popup.Navigation.PopModalAsync();

                await Microsoft.Maui.ApplicationModel.MainThread.InvokeOnMainThreadAsync(async () =>
                {
                    var events = await _eventService.GetEventsAsync(true);
                    UpdateEventsCollections(events);
                });
            }
            catch (Exception ex)
            {
                await ShowAlertAsync("Error", $"Failed to save event: {ex.Message}", "OK");
                saveButton.IsEnabled = true;
                saveButton.Text = "Save Event";
            }
        };

        return popup;
    }

    private async Task DeleteEventAsync(string id)
    {
        if (_currentPage == null) return;

        bool confirm = await _currentPage.DisplayAlertAsync("Delete", "Delete event?", "Yes", "No");

        if (!confirm) return;

        try
        {
            IsBusy = true;

            var events = await _eventService.GetEventsAsync(false);
            var eventItem = events.FirstOrDefault(e => e.Id == id);

            if (eventItem != null)
            {
                EventNotificationService.Cancel(eventItem);
            }

            await _eventService.DeleteEventAsync(id);

            var updatedEvents = await _eventService.GetEventsAsync(true);
            UpdateEventsCollections(updatedEvents);
        }
        catch (Exception ex)
        {
            await ShowAlertAsync("Error", ex.Message, "OK");
        }
        finally
        {
            IsBusy = false;
        }
    }

    private async Task CompleteEventAsync(string id)
    {
        if (_currentPage == null) return;

        try
        {
            IsBusy = true;

            var events = await _eventService.GetEventsAsync(false);
            var eventItem = events.FirstOrDefault(e => e.Id == id);

            if (eventItem != null)
            {
                EventNotificationService.Cancel(eventItem);
            }

            await _eventService.ToggleEventStatusAsync(id, true);

            var updatedEvents = await _eventService.GetEventsAsync(true);
            UpdateEventsCollections(updatedEvents);
        }
        catch (Exception ex)
        {
            await ShowAlertAsync("Error", ex.Message, "OK");
        }
        finally
        {
            IsBusy = false;
        }
    }

    private async Task ViewOnMapAsync(EventItem eventItem)
    {
        if (_currentPage == null) return;

        if (string.IsNullOrWhiteSpace(eventItem.Location))
        {
            await ShowAlertAsync("No Location", "This event doesn't have a location specified.", "OK");
            return;
        }

        try
        {
            var mapPopup = new MapPopup(eventItem.Title, eventItem.Location);
            await _currentPage.Navigation.PushModalAsync(mapPopup);
        }
        catch (Exception ex)
        {
            await ShowAlertAsync("Error", $"Could not open map: {ex.Message}", "OK");
        }
    }

    private async Task ShowAlertAsync(string title, string message, string cancel)
    {
        if (_currentPage != null)
        {
            await Microsoft.Maui.ApplicationModel.MainThread.InvokeOnMainThreadAsync(async () =>
            {
                await _currentPage.DisplayAlertAsync(title, message, cancel);
            });
        }
    }
}