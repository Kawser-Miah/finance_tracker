import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final instance = AppTheme._();

  // static const Color lightPrimaryColor = Color(0xFF7C4DFF);
  // static const Color lightPrimaryColor = Color(0xFF886DE7);
  static final Color lightPrimaryColor = Colors.deepPurpleAccent.shade100;
  // static const Color _lightOnPrimaryColor = Color(0xFFEDE7F6);
  static const Color _lightOnPrimaryColor = Color(0xFFE9DCF3);

  static const Color _lightPrimaryContainer = Color(0xFFCFC2F5);
  static const Color _lightTextColorPrimary = Colors.black;
  static Color lightBorderColor = Colors.black.withOpacity(0.4000000059604645);

  static const TextStyle lightHeadingText = TextStyle(
      color: _lightTextColorPrimary, fontSize: 20, fontWeight: FontWeight.bold);

  static const TextStyle lightBodyText = TextStyle(
    color: _lightTextColorPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  ThemeData lightTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      scaffoldBackgroundColor: lightPrimaryColor,
      colorScheme:  ColorScheme.light(
        primary: lightPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
        primaryContainer: _lightPrimaryContainer,
      ),
      splashColor: Colors.transparent
    );
  }
}
