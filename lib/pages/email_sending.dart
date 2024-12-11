// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:troubling/components/body_confirm.dart';
import 'package:troubling/components/card.dart';
import 'package:troubling/components/confirm_card.dart';
import 'package:troubling/components/footer.dart';
import 'package:troubling/components/navbar.dart';

class EmailSendingPage extends StatelessWidget {
  const EmailSendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Blur background overlay image
          Positioned.fill(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/blur_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          //scrollable content
          SingleChildScrollView(
            child: Column(
              children: [
                // Navbar
                Navbar(),
                const SizedBox(height: 239),

                // Body content with MaskGroup
                BodyConfirm(),
              ],
            ),
          ),
          // /Footer => to be on top of body
          Positioned(
            top: 1100,
            child: Footer(),
          ),

          // Overlay card for email input (fixed padding and fixed size)
          Positioned(
            top: 244,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 808,
                height: 384,
                child: EmailCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 60),

                  // Record Button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '전달하러 가기',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
