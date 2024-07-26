import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../config/theme/app_theme.dart';

class NextButton extends StatelessWidget {
  late String text;
  final onPressed;
  NextButton({super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.2),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            side: BorderSide(color: accentColor, width: 1.0),
            minimumSize: Size(240, 50), // Increase the size of the button
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
