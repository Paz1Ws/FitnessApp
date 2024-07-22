import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_theme.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_next_button.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingDescriptiveLabel extends StatelessWidget {
  String iconAsset;
  String progressIndicatorAsset;
  String text;
  int index;
  OnboardingDescriptiveLabel({
    required this.iconAsset,
    required this.progressIndicatorAsset,
    required this.text,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: primaryColor,
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 5,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              iconAsset,
            ),
            SizedBox(height: 20),
            Text(text,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: backgroundColor,
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
        OnboardingNextButton(index: index)
      ],
    );
  }
}
