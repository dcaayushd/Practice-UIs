import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorBlack = Colors.black;
const colorOrange = Colors.deepOrange;
const colorGray = Color(0xff9E9E9E);
const colorWhite = Color(0xffFFA801);
const colorGreen = Color(0xff7BB655);

TextTheme defaultText = TextTheme(
    displayLarge: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 96),
    displayMedium:
        GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 60),
    displaySmall: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 48),
    headlineMedium:
        GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 34),
    headlineSmall:
        GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 24),
    titleLarge: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 20),
    bodyLarge: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: GoogleFonts.nunito(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    titleMedium:
        GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.normal),
    titleSmall: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w400),
    labelLarge: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w400),
    bodySmall: GoogleFonts.nunito(fontSize: 12, fontWeight: FontWeight.normal));
