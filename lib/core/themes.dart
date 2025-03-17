import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: CraftColors.primaryColor,
  fontFamily: GoogleFonts.poppins().fontFamily,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.grey.shade600,
    ),
  ),
);

class CraftColors {
  static const Color grey = Color(0xFFB3C4D8);
  static const Color white = Color(0xFFC2D1E6);
  static const Color black = Color(0xFF13131F);
  static const Color primaryColor = Color(0xFF3A1FFD);
  static const Color logoRimColor = Color(0xFF795EFF);
  static const Color firstRimColor = Color(0xFF664AFB);
  static const Color secondRimColor = Color(0xFF472AF8);
}
