import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue.shade300,
  scaffoldBackgroundColor: Colors.blue.shade100,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue.shade300,
    foregroundColor: Colors.white,
  ),
  cardColor: Colors.blue.shade200, 
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.red.shade800, 
  scaffoldBackgroundColor: Colors.red.shade900,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.red.shade800, 
    foregroundColor: Colors.white,
  ),
  cardColor: Colors.red.shade700,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  ),
);
