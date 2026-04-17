using System.Globalization;

namespace MyFirstMauiApp.Converters;

public class StatusColorConverter : IValueConverter
{
    public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is string status)
        {
            return status.ToLower() switch
            {
                "completed" => Color.FromArgb("#10B981"), // Success green
                "in progress" => Color.FromArgb("#F59E0B"), // Warning orange
                "pending" => Color.FromArgb("#6B7280"), // Gray
                _ => Color.FromArgb("#6366F1") // Primary purple
            };
        }
        // Default color if status is null or not a string
        return Color.FromArgb("#6366F1");
    }

    public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        // We don't need ConvertBack for this converter
        throw new NotImplementedException();
    }
}