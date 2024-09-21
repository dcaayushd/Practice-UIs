import 'package:flutter/material.dart';
import 'package:kayak_booking_app/views/home/home.dart';

void main() {
  runApp(const KayakBookingApp());
}

class KayakBookingApp extends StatelessWidget {
  const KayakBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yathch Booking App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen());
  }
}
