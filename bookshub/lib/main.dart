import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bookshub/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BooksHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.gentiumBookPlusTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}
