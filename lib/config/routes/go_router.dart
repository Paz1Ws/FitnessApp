import 'package:flutter/widgets.dart';
import 'package:flutter_fitness_app/config/theme/app_theme.dart';
import 'package:flutter_fitness_app/presentation/screens/information/setup/screens/walkway/select_gender.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';
import 'package:animate_do/animate_do.dart';

import '../../presentation/widgets/information/template_walkway_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/', builder: (context, state) => JelloIn(child: SplashScreen())),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => FadeInLeft(child: Onboarding()),
      routes: [
        GoRoute(
            path: 'onboarding2',
            builder: (context, state) => FadeOutLeft(
                  child: Onboarding2(),
                )),
        GoRoute(
            path: 'onboarding3',
            builder: (context, state) => FadeOutLeft(
                  child: Onboarding3(),
                )),
        GoRoute(
            path: 'onboarding4',
            builder: (context, state) => FadeOutLeft(
                  child: Onboarding4(),
                )),
      ],
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => FadeInRight(child: WelcomeLogin()),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => FadeInRight(child: SignUp()),
    ),
    GoRoute(
      path: '/passwordforgotten',
      builder: (context, state) => FadeInRight(child: ForgotPassword()),
    ),
    GoRoute(
      path: '/setpassword',
      builder: (context, state) => FadeInRight(child: SetPassword()),
    ),
    GoRoute(
        path: '/setUp',
        builder: (context, state) => FadeInRight(child: WalkwayController()),
        routes: [
          GoRoute(
            path: 'selectAge',
            builder: (context, state) => FadeOutRight(
              child: SelectGender(),
            ),
          ),

// GoRoute(
//             path: '/selectage',
//             builder: (context, state) => FadeOutRight(
//               child: TemplateSetupScreen(
//                 title: 'Select your age',
//                 widget: SelectAge(),
//               ),
//             ),),
//              GoRoute(
//             path: '/selectage',
//             builder: (context, state) => FadeOutRight(
//               child: TemplateSetupScreen(
//                 title: 'Select your age',
//                 widget: SelectAge(),
//               ),
//             ),),
//              GoRoute(
//             path: '/selectage',
//             builder: (context, state) => FadeOutRight(
//               child: TemplateSetupScreen(
//                 title: 'Select your age',
//                 widget: SelectAge(),
//               ),
//             ),),
//              GoRoute(
//             path: '/selectage',
//             builder: (context, state) => FadeOutRight(
//               child: TemplateSetupScreen(
//                 title: 'Select your age',
//                 widget: SelectAge(),
//               ),
//             ),),
//              GoRoute(
//             path: '/selectage',
//             builder: (context, state) => FadeOutRight(
//               child: TemplateSetupScreen(
//                 title: 'Select your age',
//                 widget: SelectAge(),
//               ),
//             ),),
//              GoRoute(
//             path: '/selectage',
//             builder: (context, state) => FadeOutRight(
//               child: TemplateSetupScreen(
//                 title: 'Select your age',
//                 widget: SelectAge(),
//               ),
//             ),),

// selectage
// selectgender
// selectgoal
// selectweight
// selectheight
// selectactivity
// fillprofile
        ])
  ],
);
