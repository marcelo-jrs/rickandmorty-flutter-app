import 'package:flutter/material.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      elevation: 2,
      scrolledUnderElevation: 0,
    ),
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[100],
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[850],
      foregroundColor: Colors.white,
      elevation: 2,
      scrolledUnderElevation: 0,
    ),
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[900],
    cardTheme: CardThemeData(
      color: Colors.grey[800],
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    ),
  );
}