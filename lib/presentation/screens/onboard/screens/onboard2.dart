import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_description_label.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/onboarding/onboarding2.png",
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
        ),
        OnboardingDescriptiveLabel(
          iconAsset: "assets/images/design/workout.png",
          progressIndicatorAsset:
              "assets/images/onboarding/onboarding_indicator_1.png",
          text: "Start Your Journey Towards A More Active Lifestyle",
          index: 3,
        ),
      ],
    ));
  }
}
