import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.orange,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade400,
    primary: Colors.orange,
    secondary: Colors.grey.shade200,
  ),
  scaffoldBackgroundColor: Colors.orange.shade100,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.orange,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.orange,
    secondary: Colors.grey.shade700,
  ),
  scaffoldBackgroundColor: Colors.grey.shade900,
);
