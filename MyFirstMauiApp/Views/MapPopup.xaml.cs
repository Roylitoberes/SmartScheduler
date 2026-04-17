using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using Microsoft.Maui.Controls.Maps;
using Microsoft.Maui.Maps;

namespace MyFirstMauiApp.Views;

public partial class MapPopup : ContentPage, INotifyPropertyChanged
{
    private string _eventTitle;
    private string _eventLocation;
    private double _latitude;
    private double _longitude;

    public new event PropertyChangedEventHandler? PropertyChanged;

    public MapPopup(string eventTitle, string eventLocation, double latitude = 0, double longitude = 0)
    {
        InitializeComponent();

        _eventTitle = eventTitle;
        _eventLocation = eventLocation;
        _latitude = latitude;
        _longitude = longitude;

        BindingContext = this;

        CloseCommand = new Command(async () => await Close());
        OpenExternalMapCommand = new Command(async () => await OpenExternalMap());

        LoadMap();
    }

    public string EventTitle
    {
        get => _eventTitle;
        set
        {
            _eventTitle = value;
            OnPropertyChanged();
        }
    }

    public string EventLocation
    {
        get => _eventLocation;
        set
        {
            _eventLocation = value;
            OnPropertyChanged();
        }
    }

    public ICommand CloseCommand { get; }
    public ICommand OpenExternalMapCommand { get; }

    private async Task Close()
    {
        await Navigation.PopModalAsync();
    }

    private async Task OpenExternalMap()
    {
        try
        {
            if (!string.IsNullOrWhiteSpace(_eventLocation))
            {
                var uri = new Uri($"https://www.google.com/maps/search/?api=1&query={Uri.EscapeDataString(_eventLocation)}");
                await Launcher.OpenAsync(uri);
            }
        }
        catch (Exception ex)
        {
            await DisplayAlertAsync("Error", $"Could not open maps: {ex.Message}", "OK");
        }
    }

    private async void LoadMap()
    {
        try
        {
            if (!string.IsNullOrWhiteSpace(_eventLocation))
            {
                var locations = await Microsoft.Maui.Devices.Sensors.Geocoding.GetLocationsAsync(_eventLocation);
                var location = locations?.FirstOrDefault();

                if (location != null)
                {
                    _latitude = location.Latitude;
                    _longitude = location.Longitude;

                    var mapSpan = MapSpan.FromCenterAndRadius(
                        new Location(_latitude, _longitude),
                        Distance.FromMiles(0.5));
                    EventMap.MoveToRegion(mapSpan);

                    var pin = new Pin
                    {
                        Label = EventTitle,
                        Address = EventLocation,
                        Location = new Location(_latitude, _longitude),
                        Type = PinType.Place
                    };
                    EventMap.Pins.Add(pin);
                }
                else
                {
                    var defaultLocation = new Location(40.7128, -74.0060);
                    var mapSpan = MapSpan.FromCenterAndRadius(defaultLocation, Distance.FromMiles(2));
                    EventMap.MoveToRegion(mapSpan);

                    await DisplayAlertAsync("Info", "Could not find exact location on map. You can still open in Google Maps.", "OK");
                }
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Error loading map: {ex.Message}");
            var defaultLocation = new Location(40.7128, -74.0060);
            var mapSpan = MapSpan.FromCenterAndRadius(defaultLocation, Distance.FromMiles(2));
            EventMap.MoveToRegion(mapSpan);
        }
    }

    protected virtual void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName ?? string.Empty));
    }
}