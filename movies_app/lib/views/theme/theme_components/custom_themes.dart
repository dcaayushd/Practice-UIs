import 'package:flutter/material.dart';
import 'package:movies_app/views/theme/theme_components/app_colors.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: primaryColor,
  primaryTextTheme:
      TextTheme(labelLarge: TextStyle(color: Colors.amber.shade900)),
);
