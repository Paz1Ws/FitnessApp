import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('BH',
              style: GoogleFonts.montserrat(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: primaryColor,
                fontStyle: FontStyle.italic,
              )),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Bloom',
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                  fontStyle: FontStyle.italic,
                )),
            Text('Healthy',
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                  color: secondaryColor,
                  fontStyle: FontStyle.italic,
                )),
          ])
        ]),
      ),
    );
  }
}
