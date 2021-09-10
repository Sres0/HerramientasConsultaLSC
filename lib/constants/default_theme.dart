import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

//PRIMARY COLORS
Color kPrimaryColor = HexColor('0e1b4d');
Color kPrimaryColorLight = HexColor('46b6c2');
Color kPrimaryColorDark = HexColor('4a5b64');
Color kSecondaryColor = HexColor('c4c4c4');
Color kSecondaryColorDark = Colors.black;
Color kSecondaryColorLight = Colors.white;
Color kAccentColor = HexColor('442c2e');

//DEFAULT THINGS
BorderRadius kprimaryBorderRadius = BorderRadius.circular(10);
EdgeInsets kPrimaryEdgeInsets = EdgeInsets.all(10);
EdgeInsets kSecondaryEdgeInsets = EdgeInsets.all(20);
EdgeInsets kPrimaryEdgeInsetsSymmetric =
    EdgeInsets.symmetric(horizontal: 5, vertical: 10);
EdgeInsets kSecondaryEdgeInsetsSymmetric =
    EdgeInsets.symmetric(horizontal: 10, vertical: 5);
double kPrimaryElevation = 8.0;

//THEME DATA
ThemeData themeData() {
  final TextStyle _textStyle = TextStyle(
    color: kSecondaryColorDark,
  );

  final TextTheme _textTheme = TextTheme(
    headline4: _textStyle,
    headline5: _textStyle,
    headline6: _textStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 24, //Non responsive
    ),
    subtitle1: _textStyle,
    subtitle2: _textStyle.copyWith(fontWeight: FontWeight.bold),
    bodyText1: _textStyle,
    bodyText2: _textStyle.copyWith(fontWeight: FontWeight.bold),
  );
  return ThemeData(
    canvasColor: kSecondaryColorLight,
    primarySwatch: Colors.grey,
    primaryColor: kPrimaryColor,
    primaryColorLight: kPrimaryColorLight,
    primaryColorDark: kSecondaryColorDark,
    textTheme: _textTheme,
    appBarTheme: AppBarTheme(
      color: kSecondaryColorLight,
      textTheme: _textTheme,
      elevation: 0,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: kPrimaryColorLight,
      elevation: kPrimaryElevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
    )),
  );
}
