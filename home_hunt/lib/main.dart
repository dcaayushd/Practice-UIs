// import 'package:flutter/material.dart';
// import 'package:home_hunt/screens/landing_page.dart';
// import 'package:home_hunt/utils/constants.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//  double screenWidth = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Homehunt',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: colorDarkBlue, primary: colorWhite),
//           // primaryColor: colorWhite,
//           // accentColor: colorDarkBlue,
//           textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
//           fontFamily: "Montserrat"),
//       home: const LandingPage(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_hunt/screens/landing_screen.dart';
import 'package:home_hunt/utils/constants.dart';

void main() {
  // Ensure full-screen mode with transparent status bar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  // Ensure app can draw behind system UI
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homehunt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: colorDarkBlue,
          primary: colorWhite,
        ),
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
        fontFamily: "Montserrat",
        // Ensure app can draw behind system UI
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      home: const LandingScreen(),
    );
  }
}
