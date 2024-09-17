import 'package:book_store_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.teal,
          bottomNavigationBarTheme:
              const BottomNavigationBarThemeData(
            selectedItemColor: Colors.teal,
            selectedLabelStyle: TextStyle(fontSize: 12.0),
            showUnselectedLabels: false,
          )),
      home: const HomeScreen(),
    );
  }
}
