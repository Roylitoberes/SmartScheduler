using System.Globalization;

namespace MyFirstMauiApp.Converters;

public class ImageSourceConverter : IValueConverter
{
    public object? Convert(object? value, Type? targetType, object? parameter, CultureInfo? culture)
    {
        if (value is string imagePath && !string.IsNullOrWhiteSpace(imagePath))
        {
            try
            {
                // Try to load from file path
                if (File.Exists(imagePath))
                {
                    System.Diagnostics.Debug.WriteLine($"✅ Loading image from: {imagePath}");
                    return ImageSource.FromFile(imagePath);
                }
                // Try to load as a stream (for temp images)
                else if (imagePath.StartsWith("temp_"))
                {
                    System.Diagnostics.Debug.WriteLine($"⚠️ Temp image path not found: {imagePath}");
                    return null;
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine($"❌ Image file not found: {imagePath}");
                    return null;
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error loading image: {ex.Message}");
                return null;
            }
        }
        return null;
    }

    public object? ConvertBack(object? value, Type? targetType, object? parameter, CultureInfo? culture)
    {
        throw new NotImplementedException();
    }
}