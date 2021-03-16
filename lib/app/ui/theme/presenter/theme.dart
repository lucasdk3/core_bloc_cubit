import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

Color primary = Color(0xff333951);
Color secundary = Colors.white;

TextStyle logoStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.w600);

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: secundary,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: secundary,
        fontSize: 12,
      ),
      bodyText2: TextStyle(
        color: secundary,
        fontSize: 12,
      ),
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
    iconTheme: IconThemeData(color: secundary),
    accentIconTheme: IconThemeData(color: secundary),
    primaryIconTheme: IconThemeData(color: secundary),
    accentColor: secundary,
    buttonColor: secundary,
    hintColor: secundary,
    unselectedWidgetColor: secundary,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(borderSide: BorderSide(color: secundary)),
        disabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: secundary)),
        labelStyle: TextStyle(
            color: secundary, fontSize: 16.0, fontWeight: FontWeight.w300),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: secundary)),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: secundary))),
  );
}

ThemeData buildLightTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    scaffoldBackgroundColor: secundary,
    primaryColor: Colors.black,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    iconTheme: IconThemeData(color: secundary),
    accentColor: Colors.teal[500],
    buttonColor: Colors.teal[500],
    hintColor: Colors.black,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      labelStyle: TextStyle(
          color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w300),
    ),
  );
}
