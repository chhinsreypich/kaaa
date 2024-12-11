// email_service.dart

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class EmailService {
  final String username = 'your_email@gmail.com'; // Replace with your email
  final String password = 'your_password';       // Replace with your email's password or app-specific password

  Future<void> sendEmail(String recipientEmail) async {
    final smtpServer = gmail(username, password);

    final message = Message()
      ..from = Address(username, 'Your Name') // Sender's name
      ..recipients.add(recipientEmail) // Recipient's email
      ..subject = 'Flutter Email Test'
      ..text = 'Hello, this is a test email sent from a Flutter app!';

    try {
      await send(message, smtpServer);
      print('Email sent successfully to $recipientEmail');
    } catch (e) {
      print('Failed to send email: $e');
    }
  }
}
