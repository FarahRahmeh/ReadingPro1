import 'package:flutter/material.dart';

class MyTextTheme {
  MyTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge:
        const TextStyle().copyWith(fontSize: 32.0, color: Colors.black),
    headlineMedium:
        const TextStyle().copyWith(fontSize: 32.0, color: Colors.black),
  );
  static TextTheme darkTextTheme = TextTheme(headlineLarge:
        const TextStyle().copyWith(fontSize: 32.0, color: Colors.white),
    headlineMedium:
        const TextStyle().copyWith(fontSize: 32.0, color: Colors.white),
  );
}
