using System;
using System.Globalization;
using Microsoft.Maui.Controls;

namespace MyFirstMauiApp.Converters
{
    public class ProgressBarColorConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            if (value is double progress)
            {
                if (progress >= 1)
                    return Color.FromArgb("#10B981"); // Success Green
                if (progress >= 0.75)
                    return Color.FromArgb("#6366F1"); // Primary Purple
                if (progress >= 0.5)
                    return Color.FromArgb("#8B5CF6"); // Secondary Purple
                if (progress >= 0.25)
                    return Color.FromArgb("#F59E0B"); // Warning Orange
                return Color.FromArgb("#EF4444"); // Danger Red
            }
            return Color.FromArgb("#6366F1");
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}