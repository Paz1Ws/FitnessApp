import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding_next_button.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../widgets/widgets.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});
  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 2), () {
    //   context.go('/onboarding2');
    // });
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/onboarding/onboarding3.png",
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
        ),
        Center(
          child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 3.5,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/design/workout.png",
                    ),
                    SizedBox(height: 20),
                    Text("Start Your Journey Towards A More Active Lifestyle",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Image.asset(
                      "assets/images/onboarding/onboarding_indicator_1.png",
                    ),
                    OnboardingNextButton(),
                  ])),
        ),
      ],
    ));
  }
}
