import 'package:flutter/material.dart';

import 'config/routes/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
    );
  }
}
