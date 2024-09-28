import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headphonify/views/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Headphones UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.workSansTextTheme()),
      home: const HomeScreen(),
    );
  }
}
