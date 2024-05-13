/* -- Light & Dark Outlined Button Themes -- */
import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._(); //To avoid creating instances
  //! -- Light Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: brown,
      side: const BorderSide(color: lightBrown),
      textStyle: const TextStyle(
          fontSize: 16, color: brown, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  //! -- Dark Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: offWhite,
      side: const BorderSide(color: lightBrown),
      textStyle: const TextStyle(
          fontSize: 16, color: offWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
