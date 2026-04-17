using System.Globalization;

namespace MyFirstMauiApp.Converters;

public class HasPhotoConverter : IValueConverter
{
    public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is byte[] photoData)
        {
            return photoData != null && photoData.Length > 0;
        }
        return false;
    }

    public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}