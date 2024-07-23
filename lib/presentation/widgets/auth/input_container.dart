import 'package:flutter/material.dart';
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
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 3,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Add this line
              children: List.generate(
                textFormFields.length,
                (index) => Padding(
                  // Wrap TextFormField with Padding
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0), // Add vertical padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" ${textFormFields[index]}",
                          style: GoogleFonts.leagueSpartan(
                            color: darkColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
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
                transform: Matrix4.translationValues(-10, -45, 0),
                child: TextButton(
                    onPressed: null,
                    child: Text('Forgot Password?',
                        style: GoogleFonts.poppins(
                          color: darkColor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ))),
              )
            : SizedBox(),
      ],
    );
  }
}
