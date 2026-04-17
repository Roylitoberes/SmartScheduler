namespace MyFirstMauiApp;

public partial class Settings : ContentPage
{
	public Settings()
	{
		InitializeComponent();
	}

    public static Intent? ActionRequestScheduleExactAlarm { get; internal set; }
}