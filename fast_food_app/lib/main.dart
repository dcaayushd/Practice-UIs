import 'package:flutter/material.dart';
import 'views/screens/home/home_screen.dart';

void main() {
  runApp(const FastFoodApp());
}

class FastFoodApp extends StatelessWidget {
  const FastFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const HomeScreen(),
      // home: RemixPizza(),
    );
  }
}
