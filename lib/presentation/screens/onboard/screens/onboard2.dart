import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding_next_button.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../widgets/widgets.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});
  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 2), () {
    //   context.go('/onboarding3');
    // });
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/onboarding/onboarding2.png",
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
        ),
        Center(
          child: OnboardingNextButton(),
        ),
      ],
    ));
  }
}
