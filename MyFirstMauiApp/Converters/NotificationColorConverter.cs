using System.Globalization;

namespace MyFirstMauiApp.Converters;

public class NotificationColorConverter : IValueConverter
{
    public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is bool hasNotification)
            return hasNotification ? Colors.Gold : Colors.Gray;
        return Colors.Gray;
    }

    public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        => throw new NotImplementedException();
}