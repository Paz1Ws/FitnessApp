import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/config/theme/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../widgets/widgets.dart';

class WelcomeLogin extends StatelessWidget {
  const WelcomeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      appBar: AppBar(
        backgroundColor: darkColor,
        leading: IconButton(
          icon:
              Icon(FontAwesomeIcons.caretLeft, color: secondaryColor, size: 30),
          onPressed: () {
            // context.go('/onboarding/onboarding2');
          },
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 105),
          child: Text('LogIn',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              )),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform(
            transform: Matrix4.translationValues(0, -40, 0),
            child: Column(
              children: [
                Text('Welcome',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: accentColor,
                    )),
                SizedBox(height: 20),
                Text('Get the full experience of FitBody',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: accentColor,
                    )),
              ],
            ),
          ),
          InputContainer(
            islogin: true,
            formFields: 4,
            textFormFields: const [
              'Username or Email',
              'Password',
            ],
          ),
          NextButton(
            text: 'Log In',
            onPressed: () {
              context.go('/home');
            },
          ),
          SizedBox(height: 20),
          Text('Or Sign Up with',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: accentColor,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              Image.asset('assets/images/design/auth/google.png',
                  width: 60, height: 60),
              Image.asset('assets/images/design/auth/facebook.png',
                  width: 60, height: 60),
              Image.asset('assets/images/design/auth/fingerprint.png',
                  width: 60, height: 60),
            ],
          ),
          SizedBox(height: 20),
          Text('Don\'t have an account? ',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: accentColor,
              )),
          SizedBox(height: 10),
          Text('Sign Up',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              )),
        ],
      ),
    );
  }
}
