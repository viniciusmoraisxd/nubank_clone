import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor primaryCustomColor =
      MaterialColor(0xFF820ad1, customColor);

  static Color primaryColor = const Color(0xFF820ad1);
  static Color primaryColorVariant = const Color(0xFF9c3adb);
  static Color cardBackgroundColor = const Color(0xFFf0f1f5);
  static Color titleColor = const Color(0xFF020202);

  static const Color black = Colors.black;
  
  static const Color black54 = Colors.black54;
  static const Color grey = Colors.grey;
  static Color grey200 = Colors.grey.shade200;
  static Color grey300 = Colors.grey.shade300;
  static Color grey500 = Colors.grey.shade500;
  static Color grey600 = Colors.grey.shade600;
  static Color grey700 = Colors.grey.shade700;
  static const Color white = Colors.white;
}

Map<int, Color> customColor = {
  50: const Color.fromRGBO(130, 10, 209, 0.1),
  100: const Color.fromRGBO(130, 10, 209, 0.2),
  200: const Color.fromRGBO(130, 10, 209, 0.3),
  300: const Color.fromRGBO(130, 10, 209, 0.4),
  400: const Color.fromRGBO(130, 10, 209, 0.5),
  500: const Color.fromRGBO(130, 10, 209, 0.6),
  600: const Color.fromRGBO(130, 10, 209, 0.7),
  700: const Color.fromRGBO(130, 10, 209, 0.8),
  800: const Color.fromRGBO(130, 10, 209, 0.9),
  900: const Color.fromRGBO(130, 10, 209, 1),
};
