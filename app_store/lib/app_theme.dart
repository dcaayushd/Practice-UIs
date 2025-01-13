import 'package:flutter/cupertino.dart';

class AppTheme {
  static const backgroundColor = CupertinoColors.black;
  static const cardColor = Color(0xFF1C1C1E);
  static const buttonColor = Color(0xFF2C2C2E);
  
  static const textLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: CupertinoColors.white,
  );
  
  static const textMedium = TextStyle(
    fontSize: 16,
    color: CupertinoColors.white,
  );
  
  static final textSecondary = TextStyle(
    color: CupertinoColors.white.withAlpha(153),
    fontSize: 14,
  );
  
  static const padding = EdgeInsets.all(16);
  static const spacing = SizedBox(height: 20);
  static const radius = BorderRadius.all(Radius.circular(12));
}