import 'package:flutter/material.dart';
import 'package:shoe_store_app/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe Store App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor:
              Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}
