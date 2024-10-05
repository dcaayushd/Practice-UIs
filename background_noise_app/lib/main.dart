import 'package:flutter/material.dart';
import 'package:background_noise_app/views/original/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'White Noises',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreenOriginal(),
      // home: HomeMirror(),
    );
  }
}
