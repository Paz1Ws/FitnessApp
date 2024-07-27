import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../config/theme/app_theme.dart';
import '../../../../../widgets/widgets.dart';
import '../../providers/select_age_provider.dart';
import '../../providers/select_weight_provider.dart';

class SelectWeight extends StatelessWidget {
  const SelectWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return TemplateSetupScreen(
      title: 'What Is Your Weight?',
      widget: SelectWeightView(),
    );
  }
}

class SelectWeightView extends ConsumerWidget {
  const SelectWeightView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        SizedBox(height: 20),
        Center(
          child: Text(
            'The weight also affect directly the \nnutrients and training you need.',
            textAlign: TextAlign.center,
            style: GoogleFonts.leagueSpartan(
              fontSize: 14,
              color: accentColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: MediaQuery.sizeOf(context).width / 1.2,
          height: 60,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  ref.read(selectedTypeWeightProvider.notifier).state = 'Kg';
                },
                child: Text(
                  'Kg',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color:
                        ref.watch(selectedTypeWeightProvider).toString() == 'Kg'
                            ? lightdarkColor
                            : lightdarkColor.withOpacity(0.4),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 5,
                decoration: BoxDecoration(
                  color: darkColor,
                  border: Border.all(color: darkColor),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              TextButton(
                onPressed: () {
                  ref.read(selectedTypeWeightProvider.notifier).state = 'Lb';
                },
                child: Text(
                  'Lb',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color:
                        ref.watch(selectedTypeWeightProvider).toString() == 'Lb'
                            ? lightdarkColor
                            : lightdarkColor.withOpacity(0.4),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        PurpleBar(
          height: MediaQuery.sizeOf(context).height / 7.5,
          child: RotatedBox(
            quarterTurns: 1,
            child: ListWheelScrollView(
              perspective: 0.002,
              physics: AlwaysScrollableScrollPhysics(),
              diameterRatio: 3,
              onSelectedItemChanged: (value) {
                ref.read(selectedValueProvider.notifier).state = value;
                print(value);
              },
              itemExtent: 100,
              children: List.generate(
                101,
                (index) => RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    index.toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      color: ref.watch(selectedValueProvider.notifier).state ==
                              index
                          ? accentColor
                          : lightdarkColor.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.translationValues(-25, -130, 0),
          child: Column(
            children: [
              CustomPaint(
                painter: CustomBoxPainter(),
                size: Size(150, 150), // Adjust size as needed
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.caretUp,
                      color: secondaryColor,
                      size: 60,
                    ),
                    Text(
                      ref.watch(selectedValueProvider).toString(),
                      style: GoogleFonts.poppins(
                        fontSize: 64,
                        color: accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(50, -35, 0),
                      child: Text(
                        ref.watch(selectedTypeWeightProvider).toString(),
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
 // TODO: Implement GreenContainer Widget

// class GreenContainer extends StatelessWidget {
//           const GreenContainer({
//             required this.onKgPressed,
//             required this.onLbPressed,
//           });

//           final VoidCallback onKgPressed;
//           final VoidCallback onLbPressed;

//           @override
//           Widget build(BuildContext context) {
//             return Container(
//               width: MediaQuery.of(context).size.width / 1.2,
//               height: 60,
//               decoration: BoxDecoration(
//                 color: secondaryColor,
//                 borderRadius: BorderRadius.circular(18),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   TextButton(
//                     onPressed: onKgPressed,
//                     child: Text(
//                       'Kg',
//                       style: GoogleFonts.poppins(
//                         fontSize: 20,
//                         color: ref.watch(selectedTypeWeightProvider).toString() == 'Kg'
//                             ? lightdarkColor
//                             : lightdarkColor.withOpacity(0.4),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     width: 5,
//                     decoration: BoxDecoration(
//                       color: darkColor,
//                       border: Border.all(color: darkColor),
//                       borderRadius: BorderRadius.circular(18),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: onLbPressed,
//                     child: Text(
//                       'Lb',
//                       style: GoogleFonts.poppins(
//                         fontSize: 20,
//                         color: ref.watch(selectedTypeWeightProvider).toString() == 'Lb'
//                             ? lightdarkColor
//                             : lightdarkColor.withOpacity(0.4),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }
//         }