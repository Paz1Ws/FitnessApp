import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedActivityLevelProvider = StateProvider<String>(
  (ref) => 'Sedentary', // Initial state is Sedentary
);
