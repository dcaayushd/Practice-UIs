import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/screens/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light().textTheme)),
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
    );
  }
}
