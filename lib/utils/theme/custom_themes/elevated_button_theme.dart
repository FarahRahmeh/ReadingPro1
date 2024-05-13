import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class MyElevatedButtonTheme {
  MyElevatedButtonTheme._(); //* to avoid creating instances
//! Light
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: offWhite,
      backgroundColor: lightBrown,
      disabledForegroundColor: grey,
      disabledBackgroundColor: grey,
      side: const BorderSide(color: lightBrown),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: offWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

//! Dark
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: offWhite,
      backgroundColor: lightBrown,
      disabledForegroundColor: grey,
      disabledBackgroundColor: grey,
      side: const BorderSide(color: lightBrown),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: offWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
