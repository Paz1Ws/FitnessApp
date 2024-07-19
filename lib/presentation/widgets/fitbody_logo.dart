import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../config/theme/app_theme.dart';

class FitBody extends StatelessWidget {
  const FitBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          "assets/images/FB.png",
          filterQuality: FilterQuality.high,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('FIT',
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
                fontStyle: FontStyle.italic,
              )),
          Text('BODY',
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.normal,
                color: secondaryColor,
                fontStyle: FontStyle.italic,
              )),
        ])
      ]),
    );
  }
}
