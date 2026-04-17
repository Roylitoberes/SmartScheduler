using MyFirstMauiApp;

namespace SmartScheduler.Views
{
    public partial class OnboardingPage : ContentPage
    {
        private int _currentIndex = 0;
        private readonly int _totalSlides = 5;

        public OnboardingPage()
        {
            InitializeComponent();
        }

        private void OnCurrentItemChanged(object sender, CurrentItemChangedEventArgs e)
        {
            // Get the current index from the CarouselView
            if (OnboardingCarousel != null)
            {
                _currentIndex = OnboardingCarousel.Position;
            }

            // Update button visibility
            if (_currentIndex == _totalSlides - 1)
            {
                // Last slide
                NextButton.IsVisible = false;
                SkipButton.IsVisible = false;
                GetStartedButton.IsVisible = true;
            }
            else
            {
                // Not last slide
                NextButton.IsVisible = true;
                SkipButton.IsVisible = true;
                GetStartedButton.IsVisible = false;
            }
        }

        private async void OnNextClicked(object sender, EventArgs e)
        {
            if (OnboardingCarousel != null && _currentIndex < _totalSlides - 1)
            {
                OnboardingCarousel.Position = _currentIndex + 1;
            }
        }

        private async void OnSkipClicked(object sender, EventArgs e)
        {
            // Mark onboarding as seen
            Preferences.Set("has_seen_onboarding", true);

            if (Application.Current?.Windows.Count > 0)
            {
                Application.Current.Windows[0].Page = new AppShell();
            }
        }

        private async void OnGetStartedClicked(object sender, EventArgs e)
        {
            // Mark onboarding as seen
            Preferences.Set("has_seen_onboarding", true);

            if (Application.Current?.Windows.Count > 0)
            {
                Application.Current.Windows[0].Page = new AppShell();
            }
        }
    }
}