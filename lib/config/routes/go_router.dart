import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
  ],
);
