import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/fonts.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _hoveredIndex = -1; // To track hovered link
  int _selectedIndex = -1; // To track clicked/selected link

  final List<String> navLinks = ['앱소개', '앱제함', '사진예약', '마켓'];

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.surface,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding : EdgeInsets.only(left : 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Logo
            Image.asset(
              'lib/images/logo.png',
            ),
        
            const SizedBox(width: 10), 
        
            // Navigation Links
            Row(
              children: List.generate(navLinks.length, (index) {
                return MouseRegion(
                  onEnter: (_) => setState(() => _hoveredIndex = index),
                  onExit: (_) => setState(() => _hoveredIndex = -1),
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedIndex = index),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20), 
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Link Text
                          Text(
                            navLinks[index],
                            style: AppFonts.bodyText3.copyWith(
                              color: _selectedIndex == index || _hoveredIndex == index
                                  ? AppColors.primaryDark 
                                  : AppColors.textPrimary, 
                            ),
                          ),
        
                          // Dot indicator
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            margin: const EdgeInsets.only(top: 5),
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: _selectedIndex == index || _hoveredIndex == index
                                  ? AppColors.primaryDark
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
