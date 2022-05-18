import 'package:flutter/material.dart';
import 'package:teary/application/ui/themes/app_colors.dart';

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

const MaterialColor orangeBackground = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFEDC6),
    100: const Color(0xFFFFEDC6),
    200: const Color(0xFFFFEDC6),
    300: const Color(0xFFFFEDC6),
    400: const Color(0xFFFFEDC6),
    500: const Color(0xFFFFEDC6),
    600: const Color(0xFFFFEDC6),
    700: const Color(0xFFFFEDC6),
    800: const Color(0xFFFFEDC6),
    900: const Color(0xFFFFEDC6),
  },
);

abstract class AppTheme {
  static final light = ThemeData(
    primarySwatch: white,
    scaffoldBackgroundColor: AppColors.mainBackground,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: white,
      selectedItemColor: Color(0xFF1C1C1C),
      unselectedItemColor: Color(0x801C1C1C),
    ),
    fontFamily: 'Montserrat',
  );
}
