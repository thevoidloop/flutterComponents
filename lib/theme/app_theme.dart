import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryLigth = Colors.indigo;
  static Color primaryDark = Colors.red.shade600;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryLigth,
      appBarTheme: const AppBarTheme(color: primaryLigth, elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryLigth)),
      iconTheme: const IconThemeData().copyWith(color: primaryLigth));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryDark,
      appBarTheme: AppBarTheme(color: primaryDark, elevation: 0),
      scaffoldBackgroundColor: Colors.black,
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryDark)),
      iconTheme: const IconThemeData().copyWith(color: primaryDark));
}
