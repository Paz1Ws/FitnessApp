import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../config/theme/app_theme.dart';
import '../../../../../widgets/widgets.dart';

class SelectAge extends StatefulWidget {
  const SelectAge({super.key});

  @override
  State<SelectAge> createState() => _SelectAgeState();
}

class _SelectAgeState extends State<SelectAge> {
  bool isMaleSelected = true;

  @override
  Widget build(BuildContext context) {
    return TemplateSetupScreen(
      title: 'How Old Are You?',
      widget: SelectAgeView(),
    );
  }
}

class SelectAgeView extends ConsumerWidget {
  const SelectAgeView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        Container(
          color: primaryColor,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 7,
          child: Center(
            child: Text(
              'The age affect directly the nutrients and training you need.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: lightdarkColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
