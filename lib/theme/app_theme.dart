import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryLigth = Colors.indigo.shade600;
  static Color primaryDark = Colors.red.shade600;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryLigth,
    appBarTheme: AppBarTheme(color: primaryLigth, elevation: 0),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primaryLigth)),
    iconTheme: const IconThemeData().copyWith(color: primaryLigth),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: primaryLigth),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom().copyWith(
        backgroundColor: MaterialStateProperty.all(primaryLigth),
        shape: MaterialStateProperty.all(const StadiumBorder()),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryDark,
    appBarTheme: AppBarTheme(color: primaryDark, elevation: 0),
    scaffoldBackgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primaryDark)),
    iconTheme: const IconThemeData().copyWith(color: primaryDark),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: primaryDark),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom().copyWith(
        backgroundColor: MaterialStateProperty.all(primaryDark),
        shape: MaterialStateProperty.all(const StadiumBorder()),
      ),
    ),
  );
}
