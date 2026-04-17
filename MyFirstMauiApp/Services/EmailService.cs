using System.Net;
using System.Net.Mail;

namespace SmartScheduler.Services
{
    public class EmailService
    {
        private readonly string smtpServer = "smtp.gmail.com";
        private readonly int smtpPort = 587;
        private readonly string senderEmail = "smartscheduler.ph@gmail.com";
        private readonly string senderPassword = "lbwy qrrb tccd vjoq";

        public async Task<(bool success, string message)> SendOTPAsync(string recipientEmail)
        {
            try
            {
                var otp = new Random().Next(100000, 999999).ToString();

                using (var client = new SmtpClient(smtpServer, smtpPort))
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential(senderEmail, senderPassword);

                    var message = new MailMessage
                    {
                        From = new MailAddress(senderEmail),
                        Subject = "Your Verification Code - Smart Scheduler",
                        IsBodyHtml = true,
                        Body = $@"
<!DOCTYPE html>
<html>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Smart Scheduler Verification</title>
</head>
<body style='margin:0; padding:0; font-family: Arial, sans-serif; background-color: #f5f5f5;'>
    <table width='100%' cellpadding='0' cellspacing='0' style='max-width:600px; margin:20px auto; background:white; border-radius:10px; box-shadow:0 2px 10px rgba(0,0,0,0.1);'>
        <!-- Header with Logo -->
        <tr>
            <td style='padding:30px; text-align:center; background:linear-gradient(135deg, #6B32A1, #D946EF); border-radius:10px 10px 0 0;'>
                <img src='https://your-server.com/smart_logo.png' alt='Smart Scheduler' style='width:80px; height:80px; margin-bottom:10px;'>
                <h1 style='color:white; margin:0; font-size:28px;'>Smart Scheduler</h1>
                <p style='color:white; margin:5px 0 0; opacity:0.9;'>Your Personal Assistant</p>
            </td>
        </tr>
        
        <!-- Body -->
        <tr>
            <td style='padding:40px;'>
                <h2 style='color:#6B32A1; margin-top:0;'>Account Verification</h2>
                <p style='color:#666; font-size:16px; line-height:1.5;'>Hello,</p>
                <p style='color:#666; font-size:16px; line-height:1.5;'>Thank you for choosing Smart Scheduler! Please use the verification code below to complete your registration:</p>
                
                <!-- OTP Code Box -->
                <div style='background:#f8f0ff; padding:20px; border-radius:10px; text-align:center; margin:30px 0;'>
                    <span style='font-size:48px; font-weight:bold; letter-spacing:10px; color:#6B32A1;'>{otp}</span>
                </div>
                
                <p style='color:#999; font-size:14px;'>This code will expire in <strong>5 minutes</strong>.</p>
                <p style='color:#999; font-size:14px;'>If you didn't request this, please ignore this email.</p>
                
                <hr style='border:none; border-top:1px solid #e0e0e0; margin:30px 0;'>
                
                <p style='color:#999; font-size:12px; text-align:center;'>© 2024 Smart Scheduler. All rights reserved.</p>
            </td>
        </tr>
    </table>
</body>
</html>"
                    };
                    message.To.Add(recipientEmail);

                    await client.SendMailAsync(message);

                    Preferences.Set($"otp_{recipientEmail}", otp);
                    Preferences.Set($"otp_time_{recipientEmail}", DateTime.UtcNow.Ticks.ToString());

                    System.Diagnostics.Debug.WriteLine($"✅ OTP {otp} sent to {recipientEmail}");
                    return (true, "OTP sent successfully");
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"❌ Error: {ex.Message}");
                return (false, $"Failed to send OTP: {ex.Message}");
            }
        }

        public bool VerifyOTP(string email, string enteredOTP)
        {
            var savedOTP = Preferences.Get($"otp_{email}", "");
            var savedTime = Preferences.Get($"otp_time_{email}", "0");

            if (string.IsNullOrEmpty(savedOTP) || savedOTP != enteredOTP)
                return false;

            var otpTime = new DateTime(long.Parse(savedTime));
            if ((DateTime.UtcNow - otpTime).TotalMinutes > 5)
                return false;

            Preferences.Remove($"otp_{email}");
            Preferences.Remove($"otp_time_{email}");

            return true;
        }
    }
}