import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme/app_theme.dart';

class InputContainer extends StatelessWidget {
  List<String> textFormFields;
  int formFields;
  bool islogin;
  InputContainer({
    required this.textFormFields,
    required this.formFields,
    required this.islogin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          color: primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                textFormFields.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" ${textFormFields[index]}",
                          style: GoogleFonts.leagueSpartan(
                            color: lightdarkColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        islogin
            ? Transform(
                transform: Matrix4.translationValues(-10, -40, 0),
                child: TextButton(
                    onPressed: () {
                      context.go('/passwordforgotten');
                    },
                    child: Text('Forgot Password?',
                        style: GoogleFonts.poppins(
                          color: lightdarkColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ))),
              )
            : SizedBox(),
      ],
    );
  }
}
