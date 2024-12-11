import 'package:flutter/material.dart';
import 'package:troubling/constants/colors.dart';

import '../constants/fonts.dart';

class EmailCardConfirm extends StatelessWidget {
  const EmailCardConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.surface, // Background color for the card
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Card radius
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, left: 100.0), // General padding for the card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
          children: [
            // Row to hold the delete icon and other content
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 10.0), // Padding to the top-right
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.cancel_outlined, 
                    color: Colors.black,
                    size : 30,
                  ), // Cross icon
                  onPressed: () {
                    // Handle the delete action here
                  },
                ),
              ),
            ),
            
            // Top-left message text
            Padding(
              padding: const EdgeInsets.only(left: 200, top: 100),
              child: Text(
                '이메일이 전송되었습니다 :)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16), // Space between message and email input row
           
            // Centered button with padding on the left
            Padding(
              padding: const EdgeInsets.only(left: 250.0, top: 40.0), // Adjusted button padding from the left
              child: ElevatedButton(
                onPressed: () {
                  // Handle send email action
                },
                child: Text(
                  '확인',
                  style: AppFonts.button1, // Custom button style
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top : 9, bottom : 9, right : 40, left : 40,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4), // Rounded button edges
                  ),
                  backgroundColor: AppColors.button, // Set the button background color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
