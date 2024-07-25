import 'package:flutter/material.dart';

class PlatformLoginButtons extends StatelessWidget {
  final String image;
  const PlatformLoginButtons({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: 35,
        height: 35,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
