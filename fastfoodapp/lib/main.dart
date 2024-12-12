import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fastfoodapp/screens/landing_screen.dart';
import 'package:fastfoodapp/utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, 
      statusBarBrightness: Brightness.dark, 
      statusBarIconBrightness: Brightness.light, 
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark, 
    ),
  );
  
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge, 
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food App',
      theme: ThemeData(
        textTheme: defaultText,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
      ),
      home: const LandingScreen(),
    );
  }
}