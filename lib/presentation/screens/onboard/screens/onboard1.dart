import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../widgets/widgets.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      context.go('/onboarding/onboarding1');
    });
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/onboarding1.png",
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
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
          ],
        ),
      ],
    ));
  }
}
