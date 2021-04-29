import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Colors.amber;
const accentColor = const Color(0xFF000029);

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
