import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../config/theme/app_theme.dart';
import '../../../../../widgets/widgets.dart';
import '../../provider/selected_color_provider.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  bool isMaleSelected = true;

  @override
  Widget build(BuildContext context) {
    return TemplateSetupScreen(
      title: 'What\'s Your Gender?',
      widget: SelectGenderView(),
    );
  }
}

class SelectGenderView extends ConsumerWidget {
  const SelectGenderView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final selectedGender = ref.watch(selectedGenderProvider);
    onMaleSelected() =>
        ref.read(selectedGenderProvider.notifier).state = Gender.male;
    onFemaleSelected() =>
        ref.read(selectedGenderProvider.notifier).state = Gender.female;
    return Column(
      children: [
        Container(
          color: primaryColor,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 7,
          child: Center(
            child: Text(
              'The gender affect directly the calories and nutrients you need.',
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
        GenderButton(
          color: selectedGender == Gender.male
              ? secondaryColor
              : Colors.transparent,
          icon: FontAwesomeIcons.mars,
          onTap: onMaleSelected,
        ),
        SizedBox(height: 20),
        Text(
          'Male',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: accentColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        GenderButton(
          color: selectedGender == Gender.female
              ? secondaryColor
              : Colors.transparent,
          icon: FontAwesomeIcons.venus,
          onTap: onFemaleSelected,
        ),
        SizedBox(height: 10),
        Text(
          'Female',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: accentColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class GenderButton extends StatelessWidget {
  const GenderButton({
    super.key,
    required this.color,
    required this.icon,
    required this.onTap,
  });

  final Color color;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(color: accentColor, width: 1),
        ),
        child: Icon(
          icon,
          size: 80,
          color: color == secondaryColor ? darkColor : accentColor,
        ),
      ),
    );
  }
}
