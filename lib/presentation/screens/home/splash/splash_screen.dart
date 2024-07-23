import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../widgets/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      context.go('/onboarding');
      print('SplashScreen: Navigating to /onboarding after 2 seconds delay');
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: FitBody(),
    );
  }
}
