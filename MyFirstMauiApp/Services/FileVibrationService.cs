using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Maui.Devices;
using Microsoft.Maui.ApplicationModel;

namespace MyFirstMauiApp.Services
{
    public class FileVibrationService
    {
        private CancellationTokenSource? _cts;
        private bool _isVibrating = false;
        private readonly object _lock = new object();

        public void StartContinuousVibration()
        {
            lock (_lock)
            {
                if (_isVibrating)
                    return;

                _isVibrating = true;
                _cts = new CancellationTokenSource();
            }

            Task.Run(async () =>
            {
                while (!_cts.IsCancellationRequested)
                {
                    try
                    {
                        await Microsoft.Maui.ApplicationModel.MainThread.InvokeOnMainThreadAsync(() =>
                        {
                            if (Microsoft.Maui.Devices.Vibration.Default.IsSupported)
                            {
                                Microsoft.Maui.Devices.Vibration.Default.Vibrate(TimeSpan.FromSeconds(0.5));
                            }
                        });
                        await Task.Delay(600);
                    }
                    catch
                    {
                        await Task.Delay(100);
                    }
                }

                lock (_lock)
                {
                    _isVibrating = false;
                    _cts = null;
                }
            });
        }

        public void StopVibration()
        {
            lock (_lock)
            {
                _cts?.Cancel();
                _cts = null;
                _isVibrating = false;
            }

            try
            {
                Microsoft.Maui.ApplicationModel.MainThread.BeginInvokeOnMainThread(() =>
                {
                    if (Microsoft.Maui.Devices.Vibration.Default.IsSupported)
                    {
                        Microsoft.Maui.Devices.Vibration.Default.Cancel();
                    }
                });
            }
            catch { }
        }

        public bool IsVibrating()
        {
            lock (_lock)
            {
                return _isVibrating;
            }
        }

        public void VibrateOnce()
        {
            try
            {
                if (Microsoft.Maui.Devices.Vibration.Default.IsSupported)
                {
                    Microsoft.Maui.Devices.Vibration.Default.Vibrate(500);
                }
            }
            catch { }
        }

        public void VibrateCustom(double duration)
        {
            try
            {
                if (Microsoft.Maui.Devices.Vibration.Default.IsSupported)
                {
                    Microsoft.Maui.Devices.Vibration.Default.Vibrate(duration);
                }
            }
            catch { }
        }
    }
}