import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';
import 'package:animate_do/animate_do.dart';

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
  ],
);
