import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
    primaryColor: Colors.black,
    colorScheme: const ColorScheme(
      primary: Colors.black,
      secondary: Colors.grey,
      surface: Colors.white,
      background: Color.fromARGB(255, 218, 218, 218),
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black)),
    inputDecorationTheme:
        const InputDecorationTheme(border: OutlineInputBorder()));
