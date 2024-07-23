import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_description_label.dart';
import 'package:go_router/go_router.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
          child: Image.asset(
            "assets/images/onboarding/onboarding2.png",
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        OnboardingDescriptiveLabel(
          buttonText: 'Next',
          onPressed: () {
            context.go('/onboarding/onboarding3');
          },
          iconAsset: "assets/images/design/workout.png",
          progressIndicatorAsset:
              "assets/images/onboarding/onboarding_indicator_1.png",
          text: "Start Your Journey Towards A More Active Lifestyle",
        ),
      ],
    ));
  }
}
