import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/widgets/general/next_button.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/theme/app_theme.dart';
import '../../widgets/widgets.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    onPressed() {
      context.go('onboarding/onboarding2');
    }

    return Scaffold(
        body: Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          child: Image.asset(
            "assets/images/onboarding/onboarding1.png",
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome To',
                style: GoogleFonts.leagueSpartan(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: secondaryColor,
                )),
            FitBody(),
            SizedBox(
              height: 20,
            ),
            NextButton(
              text: 'Get Started',
              onPressed: () {
                context.go('/onboarding/onboarding2');
              },
            ),
          ],
        ),
      ],
    ));
  }
}
