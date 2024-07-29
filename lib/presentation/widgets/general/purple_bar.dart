import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_theme.dart';

class PurpleBar extends StatelessWidget {
  final child;
  final height;
  final width;
  const PurpleBar(
      {super.key, required this.child, required this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: width ?? double.infinity,
      height: height,
      child: child,
    );
  }
}
