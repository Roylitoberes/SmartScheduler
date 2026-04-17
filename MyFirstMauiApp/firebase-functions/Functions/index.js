const functions = require('firebase-functions');
const nodemailer = require('nodemailer');

// ============================================
// SIMPLE SMTP CONFIGURATION - LIKE YOUR VB.NET
// ============================================
const transporter = nodemailer.createTransport({
    host: 'smtp.gmail.com',
    port: 587,
    secure: false, // false for 587, true for 465
    auth: {
        user: 'royoberes333@gmail.com',
        pass: 'ricy qekf hmeb lzlr' // Your app password (WITH SPACES - exactly like VB.NET)
    }
});

/**
 * Send OTP email - SIMPLE VERSION like your VB.NET
 */
exports.sendOTP = functions.https.onCall(async (data, context) => {
    console.log('✅ sendOTP function called');

    const { email, otp } = data;

    if (!email || !otp) {
        throw new functions.https.HttpsError('invalid-argument', 'Email and OTP are required');
    }

    console.log(`📧 Sending OTP ${otp} to ${email}`);

    // Simple email - just like your VB.NET example
    const mailOptions = {
        from: 'royoberes333@gmail.com',
        to: email,
        subject: 'Your Verification Code',
        text: 'Your verification code is: ' + otp  // Plain text like VB.NET
    };

    try {
        const info = await transporter.sendMail(mailOptions);
        console.log('✅ Email sent successfully!');
        console.log('📨 Response:', info.response);

        return {
            success: true,
            message: 'Verification code sent successfully'
        };
    } catch (error) {
        console.error('❌ Error:', error.message);
        throw new functions.https.HttpsError('internal', 'Failed to send code: ' + error.message);
    }
});

/**
 * Test function - to verify email works
 */
exports.testEmail = functions.https.onCall(async (data, context) => {
    console.log('✅ testEmail function called');

    const { email } = data;

    if (!email) {
        throw new functions.https.HttpsError('invalid-argument', 'Email is required');
    }

    const testMailOptions = {
        from: 'royoberes333@gmail.com',
        to: email,
        subject: 'Test Email from Smart Scheduler',
        text: 'This is a test email. Your email configuration is working!'
    };

    try {
        const info = await transporter.sendMail(testMailOptions);
        console.log('✅ Test email sent!');
        return {
            success: true,
            message: 'Test email sent successfully'
        };
    } catch (error) {
        console.error('❌ Test email failed:', error.message);
        throw new functions.https.HttpsError('internal', error.message);
    }
});