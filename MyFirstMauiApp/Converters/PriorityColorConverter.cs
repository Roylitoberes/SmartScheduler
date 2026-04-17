using System.Globalization;

namespace MyFirstMauiApp.Converters
{
    public class PriorityColorConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            if (value is string priority)
            {
                return priority.ToLower() switch
                {
                    "high" => Color.FromArgb("#F85EBC"),  // Pink
                    "medium" => Color.FromArgb("#9B51E0"), // Purple
                    "low" => Color.FromArgb("#27AE60"),    // Green
                    _ => Color.FromArgb("#9B51E0")         // Default purple
                };
            }

            return Color.FromArgb("#9B51E0");
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}