import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class MyCheckboxTheme {
  MyCheckboxTheme._(); // To avoid creating instances

  //! Light
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return offWhite;
      } else {
        return brown;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return lightBrown;
      } else {
        return Colors.transparent;
      }
    }),
  );

  //! Dark
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return offWhite;
      } else {
        return brown;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return lightBrown;
      } else {
        return Colors.transparent;
      }
    }),
  );
}

