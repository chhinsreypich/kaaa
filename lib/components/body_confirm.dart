import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/fonts.dart';
import '../providers/audio_record.dart';

class BodyConfirm extends StatelessWidget {
  const BodyConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    double navbarHeight = kToolbarHeight; 

    return Container(
      height: 1200, 
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
                    '메시지를 상대에게 전달해볼까요?',
                    style: AppFonts.headline1,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 60),

                  // Record Button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '전달하러 가기',
                      style: AppFonts.button,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryDark,
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 22,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), 
                      ),
                    ),
                  ),

                  const SizedBox(height: 40), 

                  // Recording Screen 
                  //RecordingScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
