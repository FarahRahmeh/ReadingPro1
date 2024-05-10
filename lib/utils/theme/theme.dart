import 'package:booktaste/utils/theme/text_theme.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class MyTheme {
  MyTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    // primaryColor: dark_brown,
    scaffoldBackgroundColor: off_white,
    textTheme: MyTextTheme.lightTextTheme,

    // fontFamily:
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    //primaryColor: off_white,
    //scaffoldBackgroundColor: off_white,
    textTheme: MyTextTheme.darkTextTheme,
  );
}
