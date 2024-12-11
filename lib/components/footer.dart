// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          child: Image.asset(
            'lib/images/rec2.png',
            fit: BoxFit.cover,
            width: 1260,
            height: 731,
            alignment: Alignment.topCenter,
          ),
        ),
        Positioned(
          // move it to top 
          top: -30,
          child: Container(
            child: Image.asset(
              'lib/images/combined_shape.png',
              fit: BoxFit.cover,
              width: 1260,
              alignment: Alignment.topCenter,
            ),
          ),
        ),

        // Content inside the Footer
        Padding(
          padding: const EdgeInsets.only(top: 260),
          child: Center(
            child: Container(
              width: 1260,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SMART interview 의 여정과 함께해주세요!',
                    style: AppFonts.footerText,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildFooterButton('앱 체험하러 가기', () {}),
                      const SizedBox(width: 20),
                      _buildFooterButton('사전예약하러 가기', () {}),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Image.asset(
                    'lib/images/smart_logo.png',
                    height: 300,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),

        // Combined Shape Image
        Positioned(
          top: 1281.32,
          child: Image.asset(
            'lib/images/combined_shape.png',
            width: 1260,
            height: 232.2,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Widget _buildFooterButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDarkButton,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 22,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        text,
        style: AppFonts.button,
      ),
    );
  }
}
