// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import '../components/body.dart';
import '../components/body_record.dart';
import '../components/footer.dart';
import '../components/navbar.dart';

class RecordingPage extends StatelessWidget {
  const RecordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 1260,
            height: 2057,
            child: Stack(
              children: [
                // CustomPaint for the background curve
                CustomPaint(
                  size: Size(1260, 2057),
                ),

                // Entire scrollable content
                Column(
                  children: [
                    Navbar(),
                    SizedBox(height: 239),
                    BodyRecord(),
                    // SizedBox(height: 20),
                    // Image.asset(
                    //   'lib/images/rec1.5.png',
                    //   // fit: BoxFit.contain,
                    // ),

                  ],
                ),
                //Footer => to be on top of body
                Positioned(
                // measure from the top of  entire page
                  top: 1100,
                  child: Footer(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
