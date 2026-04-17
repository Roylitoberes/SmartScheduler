using Microsoft.Maui.Controls;
using MyFirstMauiApp.ViewModels;
using System;

namespace MyFirstMauiApp
{
    public partial class Personal : ContentPage
    {
        private PersonalViewModel? _viewModel;

        public Personal()
        {
            try
            {
                InitializeComponent();

                // Initialize ViewModel with error handling
                try
                {
                    _viewModel = new PersonalViewModel();
                    BindingContext = _viewModel;
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"Error creating ViewModel: {ex.Message}");
                    System.Diagnostics.Debug.WriteLine($"Stack trace: {ex.StackTrace}");

                    // Create a simple ViewModel with empty data
                    _viewModel = new PersonalViewModel(true); // Pass flag to create empty ViewModel
                    BindingContext = _viewModel;
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error initializing Personal page: {ex.Message}");
                System.Diagnostics.Debug.WriteLine($"Stack trace: {ex.StackTrace}");

                // Show error but don't crash
                _ = DisplayAlertAsync("Error", $"Failed to load personal activities page: {ex.Message}", "OK");
            }
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            try
            {
                if (_viewModel != null)
                {
                    await _viewModel.LoadActivitiesAsync();
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error in OnAppearing: {ex.Message}");
                await DisplayAlertAsync("Error", "Failed to load activities. Please check your internet connection and try again.", "OK");
            }
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();

            try
            {
                // Clean up timer when leaving page
                _viewModel?.Cleanup();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error in OnDisappearing: {ex.Message}");
            }
        }
    }
}