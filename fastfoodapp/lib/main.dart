import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fastfoodapp/screens/landing_screen.dart';
import 'package:fastfoodapp/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: colorGreen));
    return LayoutBuilder(builder: (context, constraints) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Screen 2',
        theme: ThemeData(textTheme: defaultText),
        home: const LandingScreen(),
      );
    });
  }
}
