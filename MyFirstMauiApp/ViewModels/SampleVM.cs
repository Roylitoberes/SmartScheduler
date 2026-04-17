using MyFirstMauiApp.Services;
using MyFirstMauiApp.ViewModels;
using System.Collections.ObjectModel;
using System.Windows.Input;
using YourAppNamespace.Models;

namespace YourAppNamespace.ViewModels
{
    public class SampleVM : BaseViewModel
    {
        private readonly FirestoreService _service;

        public ObservableCollection<SampleModels> Samples { get; set; }

        public ICommand AddCommand { get; }
        public ICommand LoadCommand { get; }

        public SampleVM()
        {
            _service = new FirestoreService();
            Samples = new ObservableCollection<SampleModels>();

            AddCommand = new Command(async () => await AddSample());
            LoadCommand = new Command(async () => await LoadSamples());
        }

        private async Task AddSample()
        {
            await _service.AddSampleAsync(new SampleModels
            {
                Name = "Android Test",
                Description = "Connected using REST API"
            });

            await LoadSamples();
        }

        private async Task LoadSamples()
        {
            Samples.Clear();
            var items = await _service.GetSamplesAsync();

            foreach (var item in items)
            {
                Samples.Add((SampleModels)item);
            }
        }
    }
}