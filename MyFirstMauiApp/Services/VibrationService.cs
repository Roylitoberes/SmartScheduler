using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Maui.Devices;

namespace MyFirstMauiApp.Services
{
    public class VibrationService
    {
        private CancellationTokenSource? _cts;

        public void StartContinuousVibration()
        {
            if (_cts != null) // already vibrating
                return;

            _cts = new CancellationTokenSource();

            Task.Run(async () =>
            {
                while (!_cts.IsCancellationRequested)
                {
                    try
                    {
                        // Use full namespace to avoid ambiguity
                        Microsoft.Maui.Devices.Vibration.Default.Vibrate(TimeSpan.FromSeconds(1));
                        await Task.Delay(1200); // wait a bit before next vibration
                    }
                    catch
                    {
                        // Device may not support vibration
                    }
                }
            });
        }

        public void StopVibration()
        {
            _cts?.Cancel();
            _cts = null;

            try
            {
                // Use full namespace to avoid ambiguity
                Microsoft.Maui.Devices.Vibration.Default.Cancel();
            }
            catch { }
        }
    }
}