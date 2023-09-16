import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    primary: const Color(0xFFF99716),
    seedColor: const Color(0xFFF99716),
  ),
  textTheme: GoogleFonts.montserratTextTheme(),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: const Color(0xFF979797).withOpacity(0.5),
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xFFF99716),
      ),
    ),
  ),
);
