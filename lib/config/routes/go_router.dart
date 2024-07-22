import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => Onboarding(),
      routes: [
        GoRoute(
          path: 'onboarding2',
          builder: (context, state) => Onboarding2(),
        ),
        GoRoute(
          path: 'onboarding3',
          builder: (context, state) => Onboarding3(),
        ),
        GoRoute(
          path: 'onboarding4',
          builder: (context, state) => Onboarding4(),
        ),
      ],
    ),
  ],
);
