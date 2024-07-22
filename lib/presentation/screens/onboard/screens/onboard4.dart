import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/presentation/widgets/onboarding/onboarding_description_label.dart';

class Onboarding4 extends StatelessWidget {
  const Onboarding4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/onboarding/onboarding4.png",
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
        ),
        OnboardingDescriptiveLabel(
          iconAsset: "assets/images/design/community.png",
          progressIndicatorAsset:
              "assets/images/onboarding/onboarding_indicator_3.png",
          text: "A Comunnity For Your Challenge Yourself",
          index: 4,
        ),
      ],
    ));
  }
}
