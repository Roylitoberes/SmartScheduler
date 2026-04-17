using MyFirstMauiApp.ViewModels;

namespace MyFirstMauiApp;

public partial class Event : ContentPage
{
    private EventViewModel? _viewModel;

    public Event()
    {
        InitializeComponent();
        _viewModel = BindingContext as EventViewModel;
        _viewModel?.SetCurrentPage(this);
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (_viewModel != null)
        {
            await _viewModel.LoadEventsAsync(true);
        }
    }
}