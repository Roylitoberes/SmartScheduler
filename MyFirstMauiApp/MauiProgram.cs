using Microsoft.Extensions.Logging;
using Microsoft.Maui.Controls.Hosting;
using Microsoft.Maui.Hosting;
using Plugin.LocalNotification;

namespace MyFirstMauiApp
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();

            // REGISTER MAIN APPLICATION
            builder.UseMauiApp<App>();

            // ADD MAPS SUPPORT
            builder.UseMauiMaps();

            // INITIALIZE LOCAL NOTIFICATION PLUGIN - CRITICAL FOR BACKGROUND NOTIFICATIONS
            builder.UseLocalNotification();

            // CONFIGURE FONTS
            builder.ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
            });

#if DEBUG
            // ENABLE DEBUG LOGGING
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}