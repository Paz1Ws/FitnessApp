import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/screens/widgets/onboarding/onboarding_description_label.dart';
import 'package:go_router/go_router.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          child: Image.asset(
            "assets/images/onboarding/onboarding3.png",
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        OnboardingDescriptiveLabel(
          buttonText: 'Next',
          onPressed: () {
            context.go('/onboarding/onboarding4');
          },
          iconAsset: "assets/images/design/nutrition.png",
          progressIndicatorAsset:
              "assets/images/onboarding/onboarding_indicator_2.png",
          text: "Find Nutrition Tips That Fit Your Lifestyle",
        ),
      ],
    ));
  }
}
