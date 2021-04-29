import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Colors.amber;
const accentColor = const Color(0xFF000029);
const dividerColor = Colors.black;

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
      headline1: TextStyle(
        fontSize: 72.0,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
      ),
      headline6: TextStyle(
        fontSize: 31.0,
        fontStyle: FontStyle.normal,
        fontFamily: "Poppins",
      ),
      headline5: TextStyle(
        fontSize: 31.0,
        fontStyle: FontStyle.normal,
        color: Colors.white,
        fontFamily: "Poppins",
      ),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}
