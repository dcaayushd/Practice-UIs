import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizzaapp/screens/onboarding/onboarding.dart';
import 'package:provider/provider.dart';

import 'controllers/customize_pizza_controller.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarDividerColor: Colors.black));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CustomPizzaController>(
          create: (_) => CustomPizzaController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pizza App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PizzaOnboarding(),
      ),
    );
  }
}