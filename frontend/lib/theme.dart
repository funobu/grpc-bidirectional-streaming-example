import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  final base = ThemeData(useMaterial3: true, brightness: Brightness.light);

  return base.copyWith(
    primaryColor: const Color(0xFF7EE3CB),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF7EE3CB),
      onPrimary: Colors.white,
      secondary: Color(0xEE7EE3CB),
      onSecondary: Colors.transparent,
      error: Colors.red,
      onError: Colors.transparent,
      background: Color(0xFFFBFBFB),
      onBackground: Color(0xEAEAEAEA),
      surface: Color(0xFFFFFFFF),
      onSurface: Colors.transparent,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: Color(0xFFFFFFFF),
      ),
      headlineSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFF48566A),
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xFF48566A),
      ),
      headlineLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFF48566A),
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFF48566A),
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF48566A),
      ),
    ),
  );
}
