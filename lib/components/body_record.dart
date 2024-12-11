// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/fonts.dart';
import '../providers/audio_record.dart';

class BodyRecord extends StatelessWidget {
  const BodyRecord({super.key});

  @override
  Widget build(BuildContext context) {
    double navbarHeight = kToolbarHeight; 

    return Container(
      height: 1000, 
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/images/rec1.png'),
          fit: BoxFit.cover, 
          alignment: Alignment.topCenter, 
        ),
      ),

      child: Stack(
        clipBehavior: Clip.none, 
        children: [
          Positioned(
            top: navbarHeight - 250, 
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [

                  // MaskGroup Image
                  Image.asset(
                    'lib/images/MaskGroup.png',
                    height: 297,
                  ),
                  const SizedBox(height: 40), 

                  // Instruction Text
                  Text(
                    '당신이 전하고 싶은 메시지를 녹음해주세요',
                    style: AppFonts.headline1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40), 

                  // Record Button
                  //Microphone Icon or Image
                  Image.asset(
                    'lib/images/mic_record.png',
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(height: 40), 

                  // Recording Screen
                  RecordingScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}