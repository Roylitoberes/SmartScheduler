using System.Globalization;
using Microsoft.Maui.Graphics;

namespace MyFirstMauiApp.Converters;

public class CategoryColorConverter : IValueConverter
{
    public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is string category)
        {
            return category switch
            {
                "Work" => Color.FromArgb("#6366F1"),
                "Personal" => Color.FromArgb("#10B981"),
                "Health" => Color.FromArgb("#F59E0B"),
                "Family" => Color.FromArgb("#EF4444"),
                "All" => Color.FromArgb("#6B7280"),
                _ => Color.FromArgb("#6B7280")
            };
        }
        return Color.FromArgb("#6B7280");
    }

    public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}