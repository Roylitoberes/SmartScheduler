using MyFirstMauiApp.Models;
using MyFirstMauiApp.Services;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Windows.Input;
using Microsoft.Maui.Storage;
using Microsoft.Maui.Media;

namespace MyFirstMauiApp.ViewModels;

public class WishlistViewModel : INotifyPropertyChanged
{
    private readonly WishlistService _wishlistService = new();
    private readonly LocalPhotoService _localPhotoService = new();
    private byte[]? _newPhotoData;
    private ImageSource? _newPhotoSource;

    public ObservableCollection<WishlistItem> WishlistItems { get; } = new();

    public int TotalWishlist => WishlistItems.Count;
    public int TotalPlanned => WishlistItems.Count(x => x.Status == "Planned");
    public int TotalBought => WishlistItems.Count(x => x.Status == "Bought");

    // FORM FIELDS
    public string? NewItemName { get; set; }
    public string? NewDescription { get; set; }
    public string? NewEstimatedPrice { get; set; }
    public string NewPriorityLevel { get; set; } = "Medium";

    public DateTime NewTargetDate { get; set; } = DateTime.Today;
    public TimeSpan NewTargetTime { get; set; } = DateTime.Now.TimeOfDay;

    public string NewStatus { get; set; } = "Planned";

    public int NewSnoozeInterval { get; set; } = 5;
    public string NewRepeatOption { get; set; } = "None";

    public ImageSource? NewPhotoSource
    {
        get => _newPhotoSource;
        set
        {
            _newPhotoSource = value;
            OnPropertyChanged(nameof(NewPhotoSource));
        }
    }

    public bool HasPhoto => _newPhotoData != null;

    public List<int> SnoozeOptions { get; } = new() { 1, 5, 10, 15, 30, 60 };

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

    private bool _isPopupVisible;

    public bool IsPopupVisible
    {
        get => _isPopupVisible;
        set
        {
            _isPopupVisible = value;
            OnPropertyChanged(nameof(IsPopupVisible));
        }
    }

    public ICommand ShowPopupCommand { get; }
    public ICommand ClosePopupCommand { get; }
    public ICommand AddNewItemCommand { get; }
    public ICommand DeleteItemCommand { get; }
    public ICommand MarkBoughtCommand { get; }
    public ICommand CapturePhotoCommand { get; }
    public ICommand PickPhotoCommand { get; }
    public ICommand RemovePhotoCommand { get; }
    public ICommand SelectPhotoCommand { get; }
    public ICommand ViewPhotoCommand { get; }

    public WishlistViewModel()
    {
        ShowPopupCommand = new Command(() => IsPopupVisible = true);
        ClosePopupCommand = new Command(() => IsPopupVisible = false);

        AddNewItemCommand = new Command(async () => await AddNewItemAsync());

        DeleteItemCommand = new Command<WishlistItem>(async (item) =>
            await DeleteItem(item));

        MarkBoughtCommand = new Command<WishlistItem>(async (item) =>
            await MarkBought(item));

        CapturePhotoCommand = new Command(async () => await CapturePhotoAsync());
        PickPhotoCommand = new Command(async () => await PickPhotoAsync());
        RemovePhotoCommand = new Command(RemovePhoto);
        SelectPhotoCommand = new Command(async () => await ViewFullPhotoAsync());
        ViewPhotoCommand = new Command<WishlistItem>(async (item) => await ViewPhotoAsync(item));

        _ = LoadItemsAsync();
    }

    private async Task ShowAlert(string title, string message, string cancel)
    {
        var window = Application.Current?.Windows.FirstOrDefault();
        if (window?.Page != null)
        {
            await window.Page.DisplayAlert(title, message, cancel);
        }
    }

    private async Task CapturePhotoAsync()
    {
        try
        {
            var status = await Permissions.CheckStatusAsync<Permissions.Camera>();
            if (status != PermissionStatus.Granted)
            {
                status = await Permissions.RequestAsync<Permissions.Camera>();
                if (status != PermissionStatus.Granted)
                {
                    await ShowAlert("Permission Required",
                        "Camera permission is required to capture photos", "OK");
                    return;
                }
            }

            if (MediaPicker.Default.IsCaptureSupported)
            {
                var photo = await MediaPicker.Default.CapturePhotoAsync();
                if (photo != null)
                {
                    using var stream = await photo.OpenReadAsync();
                    using var memoryStream = new MemoryStream();
                    await stream.CopyToAsync(memoryStream);
                    _newPhotoData = memoryStream.ToArray();
                    NewPhotoSource = ImageSource.FromStream(() => new MemoryStream(_newPhotoData));
                    OnPropertyChanged(nameof(HasPhoto));
                }
            }
            else
            {
                await ShowAlert("Not Supported",
                    "Camera capture is not supported on this device", "OK");
            }
        }
        catch (Exception ex)
        {
            await ShowAlert("Error",
                $"Failed to capture photo: {ex.Message}", "OK");
        }
    }

    private async Task PickPhotoAsync()
    {
        try
        {
            var status = await Permissions.CheckStatusAsync<Permissions.StorageRead>();
            if (status != PermissionStatus.Granted)
            {
                status = await Permissions.RequestAsync<Permissions.StorageRead>();
                if (status != PermissionStatus.Granted)
                {
                    await ShowAlert("Permission Required",
                        "Storage permission is required to pick photos", "OK");
                    return;
                }
            }

            var result = await MediaPicker.Default.PickPhotoAsync();

            if (result != null)
            {
                using var stream = await result.OpenReadAsync();
                using var memoryStream = new MemoryStream();
                await stream.CopyToAsync(memoryStream);
                _newPhotoData = memoryStream.ToArray();
                NewPhotoSource = ImageSource.FromStream(() => new MemoryStream(_newPhotoData));
                OnPropertyChanged(nameof(HasPhoto));
            }
        }
        catch (Exception ex)
        {
            await ShowAlert("Error",
                $"Failed to pick photo: {ex.Message}", "OK");
        }
    }

    private void RemovePhoto()
    {
        _newPhotoData = null;
        NewPhotoSource = null;
        OnPropertyChanged(nameof(HasPhoto));
    }

    private async Task ViewFullPhotoAsync()
    {
        if (_newPhotoData != null && _newPhotoData.Length > 0)
        {
            var page = new ContentPage
            {
                BackgroundColor = Colors.Black,
                Content = new Grid
                {
                    Children =
                    {
                        new Image
                        {
                            Source = ImageSource.FromStream(() => new MemoryStream(_newPhotoData)),
                            Aspect = Aspect.AspectFit
                        },
                        new Button
                        {
                            Text = "✕",
                            BackgroundColor = Colors.Transparent,
                            TextColor = Colors.White,
                            FontSize = 30,
                            HorizontalOptions = LayoutOptions.End,
                            VerticalOptions = LayoutOptions.Start,
                            Margin = new Thickness(20)
                        }
                    }
                }
            };

            var closeButton = (page.Content as Grid)?.Children[1] as Button;
            if (closeButton != null)
            {
                closeButton.Clicked += async (s, e) =>
                {
                    await page.Navigation.PopModalAsync();
                };
            }

            var window = Application.Current?.Windows.FirstOrDefault();
            if (window?.Page != null)
            {
                await window.Page.Navigation.PushModalAsync(page);
            }
        }
    }

    private async Task ViewPhotoAsync(WishlistItem? item)
    {
        if (item?.PhotoData != null && item.PhotoData.Length > 0)
        {
            var page = new ContentPage
            {
                BackgroundColor = Colors.Black,
                Content = new Grid
                {
                    Children =
                    {
                        new Image
                        {
                            Source = ImageSource.FromStream(() => new MemoryStream(item.PhotoData)),
                            Aspect = Aspect.AspectFit
                        },
                        new Button
                        {
                            Text = "✕",
                            BackgroundColor = Colors.Transparent,
                            TextColor = Colors.White,
                            FontSize = 30,
                            HorizontalOptions = LayoutOptions.End,
                            VerticalOptions = LayoutOptions.Start,
                            Margin = new Thickness(20)
                        }
                    }
                }
            };

            var closeButton = (page.Content as Grid)?.Children[1] as Button;
            if (closeButton != null)
            {
                closeButton.Clicked += async (s, e) =>
                {
                    await page.Navigation.PopModalAsync();
                };
            }

            var window = Application.Current?.Windows.FirstOrDefault();
            if (window?.Page != null)
            {
                await window.Page.Navigation.PushModalAsync(page);
            }
        }
    }

    public async Task LoadItemsAsync()
    {
        var items = await _wishlistService.GetItemsAsync();

        WishlistItems.Clear();

        foreach (var item in items)
        {
            var photoData = await _localPhotoService.GetPhotoAsync(item.Id);
            if (photoData != null && photoData.Length > 0)
            {
                item.PhotoData = photoData;
            }

            WishlistItems.Add(item);

            if (item.Status != "Bought")
                WishlistNotificationService.Schedule(item, item.TargetDate);
        }

        RefreshCounts();
    }

    private async Task AddNewItemAsync()
    {
        if (string.IsNullOrWhiteSpace(NewItemName))
            return;

        var targetDateTime = NewTargetDate.Date + NewTargetTime;

        var item = new WishlistItem
        {
            ItemName = NewItemName!,
            Description = NewDescription ?? "",
            EstimatedPrice = NewEstimatedPrice ?? "",
            PriorityLevel = NewPriorityLevel,
            TargetDate = targetDateTime,
            Status = NewStatus,
            SnoozeIntervalMinutes = NewSnoozeInterval,
            RepeatOption = NewRepeatOption,
            AddedDate = DateTime.Now.ToString("MMM yyyy")
        };

        await _wishlistService.AddItemAsync(item);

        if (_newPhotoData != null && _newPhotoData.Length > 0)
        {
            await _localPhotoService.SavePhotoAsync(item.Id, _newPhotoData);
            item.PhotoData = _newPhotoData;
        }

        WishlistItems.Add(item);

        if (item.Status != "Bought")
            WishlistNotificationService.Schedule(item, targetDateTime);

        RefreshCounts();

        // CLEAR FORM
        NewItemName = "";
        NewDescription = "";
        NewEstimatedPrice = "";
        NewPriorityLevel = "Medium";
        NewTargetDate = DateTime.Today;
        NewTargetTime = DateTime.Now.TimeOfDay;
        NewStatus = "Planned";
        NewSnoozeInterval = 5;
        NewRepeatOption = "None";
        _newPhotoData = null;
        NewPhotoSource = null;
        OnPropertyChanged(nameof(HasPhoto));

        OnPropertyChanged(nameof(NewItemName));
        OnPropertyChanged(nameof(NewDescription));
        OnPropertyChanged(nameof(NewEstimatedPrice));
        OnPropertyChanged(nameof(NewPriorityLevel));
        OnPropertyChanged(nameof(NewTargetDate));
        OnPropertyChanged(nameof(NewTargetTime));
        OnPropertyChanged(nameof(NewStatus));
        OnPropertyChanged(nameof(NewSnoozeInterval));
        OnPropertyChanged(nameof(NewRepeatOption));

        IsPopupVisible = false;
    }

    private async Task DeleteItem(WishlistItem? item)
    {
        if (item == null) return;

        await _wishlistService.DeleteItemAsync(item.Id);
        await _localPhotoService.DeletePhotoAsync(item.Id);

        WishlistItems.Remove(item);
        WishlistNotificationService.Cancel(item);

        RefreshCounts();
    }

    private async Task MarkBought(WishlistItem? item)
    {
        if (item == null || item.Status == "Bought")
            return;

        item.Status = "Bought";
        await _wishlistService.UpdateItemAsync(item);
        WishlistNotificationService.Cancel(item);
        RefreshCounts();
    }

    private void RefreshCounts()
    {
        OnPropertyChanged(nameof(TotalWishlist));
        OnPropertyChanged(nameof(TotalPlanned));
        OnPropertyChanged(nameof(TotalBought));
    }

    public event PropertyChangedEventHandler? PropertyChanged;

    void OnPropertyChanged(string name)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
    }
}