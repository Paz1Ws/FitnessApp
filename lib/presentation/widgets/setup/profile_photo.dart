import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/design/setup/portrait_fitness_person.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: IconButton(
            color: secondaryColor,
            icon: Icon(Icons.edit),
            onPressed: () {
              // Add your edit button logic here
            },
          ),
        ),
      ],
    );
  }
}
