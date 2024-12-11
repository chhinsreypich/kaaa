// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../components/body.dart';
import '../components/footer.dart';
import '../components/navbar.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

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
                // Entire scrollable content
                Column(
                  children: [
                    //Navbar
                    Navbar(),

                    SizedBox(height: 239), //468

                    //scrollable body
                    Body(),
                  ],
                ),
                //Footer => to be on top of body
                Positioned(
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
