import 'package:flutter/material.dart';
import '../../constans/colors.dart';

class MyAppBarTheme {
  MyAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: brown, size: 24),
    actionsIconTheme: IconThemeData(color: brown, size: 24),
    titleTextStyle:
        TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: brown),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: brown, size: 24),
    actionsIconTheme: IconThemeData(color: offWhite, size: 24),
    titleTextStyle:
        TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: offWhite),
  );
}
