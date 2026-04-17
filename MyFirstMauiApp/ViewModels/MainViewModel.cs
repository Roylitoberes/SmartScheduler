using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Maui.Storage;
using System;
using System.Threading.Tasks;

namespace MyFirstMauiApp.ViewModels
{
    public partial class AppShellViewModel : ObservableObject
    {
        // Profile Image
        private string profileImage = "default_profile.png";
        public string ProfileImage
        {
            get => profileImage;
            set => SetProperty(ref profileImage, value);
        }

        // Username
        private string username = "Roylito Oberes";
        public string Username
        {
            get => username;
            set => SetProperty(ref username, value);
        }

        // Greeting
        private string greeting = "Hello,";
        public string Greeting
        {
            get => greeting;
            set => SetProperty(ref greeting, value);
        }

        // Command (nullable lazy initialization)
        private RelayCommand? pickProfileImageCommand;
        public RelayCommand PickProfileImageCommand =>
            pickProfileImageCommand ??= new RelayCommand(async () => await PickProfileImageAsync());

        private async Task PickProfileImageAsync()
        {
            try
            {
                var result = await FilePicker.Default.PickAsync(new PickOptions
                {
                    FileTypes = FilePickerFileType.Images,
                    PickerTitle = "Select a profile image"
                });

                if (result != null)
                {
                    ProfileImage = result.FullPath;
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"File pick error: {ex.Message}");
            }
        }
    }
}