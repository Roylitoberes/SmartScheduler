using System.Globalization;

namespace MyFirstMauiApp.Converters;

public class ByteArrayToImageSourceConverter : IValueConverter
{
    public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        if (value is byte[] photoData && photoData.Length > 0)
        {
            return ImageSource.FromStream(() => new MemoryStream(photoData));
        }
        return null;
    }

    public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }
}