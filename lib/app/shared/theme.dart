import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FliperTheme {

  /// Primary color
  static const primaryColor = Color(0xFF3B5CB8);

  /// Accent color
  static const accentColor = Color(0xFFFFFFFF);

  /// Text widget default.
  static const textColor = Color(0xFF7B7D8D);

  static const backgroundColor = Color(0xFFE8EBF6);

  /// h1 TextStyle
  static TextStyle headline1 = GoogleFonts.montserrat(
    textStyle: TextStyle(
    color: primaryColor,
    fontSize: 26,
    fontWeight: FontWeight.w800,
  ));

  /// h2 TextStyle
  static TextStyle headline2 = GoogleFonts.montserrat(
    textStyle: TextStyle(
    color: textColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ));

  static ThemeData buildTheme(BuildContext context) {
    return ThemeData(
      primaryColor: Color(0xFFFA6303),
      textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: textColor,
              fontSize: 26,
              fontWeight: FontWeight.w800
          ),          
        ),
        headline2: GoogleFonts.montserrat(
              textStyle: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          )),
      )
    );
  }
}