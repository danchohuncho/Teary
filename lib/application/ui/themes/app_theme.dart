import 'package:flutter/material.dart';
import 'package:teary/application/ui/themes/app_colors.dart';

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

const MaterialColor orangeBackground = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFEDC6),
    100: Color(0xFFFFEDC6),
    200: Color(0xFFFFEDC6),
    300: Color(0xFFFFEDC6),
    400: Color(0xFFFFEDC6),
    500: Color(0xFFFFEDC6),
    600: Color(0xFFFFEDC6),
    700: Color(0xFFFFEDC6),
    800: Color(0xFFFFEDC6),
    900: Color(0xFFFFEDC6),
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
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Color(0xFFE9DEF9),
      selectionHandleColor: AppColors.green,
    ),
    fontFamily: 'Montserrat',
  );
}
