import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class MyTextTheme {
  MyTextTheme._();

  //! For Light Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: brown),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: brown),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: brown),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: brown),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: brown),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: brown.withOpacity(0.5)),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: brown),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: brown),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: brown),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: brown),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: brown.withOpacity(0.5)),
  );

  //! For Dark Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, color: offWhite),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, color: offWhite),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: offWhite),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: offWhite),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: offWhite),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: offWhite.withOpacity(0.5)),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: offWhite),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: offWhite),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: offWhite),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: offWhite),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: offWhite.withOpacity(0.5)),
  );
}
