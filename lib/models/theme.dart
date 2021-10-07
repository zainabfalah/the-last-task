import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppTheme {
  static final lightTextTheme = TextTheme(
    headline1: GoogleFonts.cairo(
      fontSize: 24,
    ),
    bodyText1: GoogleFonts.cairo(
      fontSize: 14,
    ),
    headline2: GoogleFonts.cairo(
      fontSize: 20,
    ),
    headline3: GoogleFonts.cairo(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headline4: GoogleFonts.cairo(
      fontSize: 18,
    ),
  );
  static final darkTextTheme = TextTheme(
    headline1: GoogleFonts.cairo(
      fontSize: 24,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.cairo(
      fontSize: 14,
      color: Colors.white,
    ),
    headline2: GoogleFonts.cairo(
      fontSize: 20,
      color: Colors.white,
    ),
    headline3: GoogleFonts.cairo(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline4: GoogleFonts.cairo(
      fontSize: 18,
      color: Colors.white,
    ),
  );
  static final lightThemeData = ThemeData(
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );
  static final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );
}
