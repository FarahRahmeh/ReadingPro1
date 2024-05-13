import 'package:flutter/material.dart';

const offWhite = Color(0xffFEFEFE);
const lightBrown = Color(0xffB19087);
const darkBrown = Color(0xff8F584E);
const brown = Color(0xFF5A332C);
const beige = Color(0xffFFEBDC);
const beige2 = Color(0xffF6E3E0);
const pinkish = Color(0xffE68888);
const pinkishMore = Color(0xffE27070);
const grey = Color(0xffD1C4C4);

final List<Color> gradientColors = [
  offWhite,
  lightBrown,
  darkBrown,
  brown,
  beige,
  pinkish,
  grey,
];

final List<Gradient> gradients = [
  //~ white and light brown
  const LinearGradient(
    colors: [offWhite, lightBrown],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  //~ light and dark brown
  const LinearGradient(
    colors: [lightBrown, darkBrown],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  //~ dark brown adn beige
  const LinearGradient(
    colors: [darkBrown, beige],
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

class MyColors {
  MyColors._();
  static const Color primary = beige;

//secondary   accent  textPrimary  ..light dark ...
}
