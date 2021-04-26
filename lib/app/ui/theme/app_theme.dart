import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFFfa4d73);
const accentColor = const Color(0xFF000000);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      button: TextStyle(
        fontFamily: "Poppins",
      ),
      caption: TextStyle(
        fontFamily: "Poppins",
      ),
      headline5: TextStyle(
        fontFamily: "Poppins",
      ),
    ),
  );
}
