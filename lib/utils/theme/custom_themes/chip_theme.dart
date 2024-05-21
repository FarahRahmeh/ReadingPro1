import 'package:booktaste/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class MyChipTheme {
  MyChipTheme._();

  //! Light
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: MyColors.grey.withOpacity(0.5),
    labelStyle: const TextStyle(color: MyColors.black),
    selectedColor: lightBrown,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );

  //!Dark
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: MyColors.darkGrey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: lightBrown,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
