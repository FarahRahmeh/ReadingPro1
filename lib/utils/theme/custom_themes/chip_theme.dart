import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class MyChipTheme {
  MyChipTheme._();

  //! Light
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: brown),
    selectedColor: lightBrown,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: offWhite,
  );

  //!Dark
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: grey,
    labelStyle: TextStyle(color: offWhite),
    selectedColor: lightBrown,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: offWhite,
  );
}
