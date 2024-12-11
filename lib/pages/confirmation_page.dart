// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../components/body.dart';
import '../components/body_confirm.dart';
import '../components/body_record.dart';
import '../components/footer.dart';
import '../components/navbar.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Entire scrollable content
            Column(
              children:  [
                //Navbar
                Navbar(),

                SizedBox(height : 239),

                //Body for confirmation page
                BodyConfirm(),

              ],
            ),
            // Footer => to be on top of body
                Positioned(
                  top: 1100,
                  child: Footer(),
                ),
          ],
        ),
      ),
    );
  }
}
