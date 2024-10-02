import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0XFF075E54),
        ),
      ),
      home: const WhatsAppTab(),
    );
  }
}
