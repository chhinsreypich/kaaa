import 'package:flutter/material.dart';
import 'package:troubling/constants/colors.dart';

import '../constants/fonts.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({super.key});

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
            Text(
              '메시지를 수신 받을 분의 이메일을 작성해주세요:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16), // Space between message and email input row

            // Row for email label and input box
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // Align vertically
                children: [
                  Text(
                    'email:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 20), // Space between label and input box
                  Container(
                    width: 480, // Set the width to a smaller value
                    height: 50, // Height set to 50px
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true, // Makes the background color fill
                        fillColor: Colors.grey[200], // Light grey background color
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4), // Rounded corners with 4px radius
                        ),
                        hintText: 'ex: SMART@gmail.com', // Placeholder text
                        hintStyle: TextStyle(
                          color: Colors.grey[600], // Grey color for hint text
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24), // Space between input and button

            // Centered button with padding on the left
            Padding(
              padding: const EdgeInsets.only(left: 270.0, top: 40.0), // Adjusted button padding from the left
              child: ElevatedButton(
                onPressed: () {
                  // Handle send email action
                },
                child: Text(
                  '전송하기',
                  style: AppFonts.button1, // Custom button style
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded button edges
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
