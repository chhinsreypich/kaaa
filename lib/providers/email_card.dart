import 'package:flutter/material.dart';
import 'email_service.dart'; // Import the email service

class EmailCard extends StatefulWidget {
  const EmailCard({super.key});

  @override
  _EmailCardState createState() => _EmailCardState();
}

class _EmailCardState extends State<EmailCard> {
  final TextEditingController _emailController = TextEditingController();
  final EmailService _emailService = EmailService(); // Create an instance of EmailService

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "메시지를 수신 받을 수신 이메일을 입력해주세요:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: "email:",
              hintText: "ex: SMART@gmail.com",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final email = _emailController.text.trim();
              if (email.isNotEmpty) {
                _emailService.sendEmail(email);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Email sent successfully to $email!')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please enter a valid email address.')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFA726),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text("전송하기"),
          ),
        ],
      ),
    );
  }
}
