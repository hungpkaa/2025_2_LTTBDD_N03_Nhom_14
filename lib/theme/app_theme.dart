import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xff121212),

    primaryColor: const Color(0xff1DB954),

    cardColor: const Color(0xff1E1E1E),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff121212),
      selectedItemColor: Color(0xff1DB954),
      unselectedItemColor: Colors.grey,
    ),
  );
}
