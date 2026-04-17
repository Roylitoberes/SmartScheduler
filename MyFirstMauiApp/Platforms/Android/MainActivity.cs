using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;

namespace MyFirstMauiApp;

[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity
{
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        // Suppress platform compatibility warnings for Android 12+ features
#pragma warning disable CA1416
        // Check if we're on Android 12+ (API 31+)
        if (Build.VERSION.SdkInt >= BuildVersionCodes.S)
        {
            // Get the AlarmManager service
            var alarmManager = (AlarmManager?)GetSystemService(AlarmService);

            // Check if we have permission to schedule exact alarms
            if (alarmManager != null && !alarmManager.CanScheduleExactAlarms())
            {
                // Create an intent to open the exact alarm permission settings
                Android.Content.Intent intent = new Android.Content.Intent(Android.Provider.Settings.ActionRequestScheduleExactAlarm);
                intent.AddFlags(ActivityFlags.NewTask);

                // Start the settings activity
                StartActivity(intent);
            }
        }
#pragma warning restore CA1416
    }
}