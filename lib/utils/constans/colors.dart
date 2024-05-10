import 'package:flutter/material.dart';

const off_white = Color(0xffFEFEFE);
const light_brown = Color(0xffB19087);
const dark_brown = Color(0xff8F584E);
const beige = Color(0xffFFEBDC);
const pinkish = Color(0xffE68888);

final List<Color> gradientColors = [
  off_white,
  light_brown,
  dark_brown,
  beige,
  pinkish,
];

final List<Gradient> gradients = [
  //~ white and light brown
  const LinearGradient(
    colors: [off_white, light_brown],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  //~ light and dark brown
  const LinearGradient(
    colors: [light_brown, dark_brown],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  //~ dark brown adn beige
  const LinearGradient(
    colors: [dark_brown, beige],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  //~ beige and peach
  const LinearGradient(
    colors: [beige, pinkish],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
];

class Colors {
  Colors._();
  static const Color primary = beige;
//secondary   accent  textPrimary  ..light dark ...
}
