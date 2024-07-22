import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_description_label.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/onboarding/onboarding3.png",
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
        ),
        OnboardingDescriptiveLabel(
          iconAsset: "assets/images/design/nutrition.png",
          progressIndicatorAsset:
              "assets/images/onboarding/onboarding_indicator_2.png",
          text: "Find Nutrition Tips That Fit Your Lifestyle",
          index: 4,
        ),
      ],
    ));
  }
}
