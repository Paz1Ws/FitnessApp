import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_theme.dart';
import 'package:flutter_fitness_app/presentation/widgets/general/next_button.dart';
import 'package:flutter_fitness_app/presentation/widgets/general/purple_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingDescriptiveLabel extends StatelessWidget {
  String iconAsset;
  String progressIndicatorAsset;
  String text;
  String buttonText;
  final onPressed;
  OnboardingDescriptiveLabel({
    required this.buttonText,
    required this.onPressed,
    required this.iconAsset,
    required this.progressIndicatorAsset,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PurpleBar(
          height: MediaQuery.sizeOf(context).height / 5,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              iconAsset,
            ),
            SizedBox(height: 20),
            Text(text,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: accentColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            Image.asset(
              progressIndicatorAsset,
            ),
          ]),
        ),
        SizedBox(height: 20),
        NextButton(
          text: buttonText,
          onPressed: onPressed,
        )
      ],
    );
  }
}
