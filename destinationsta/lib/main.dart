import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:destinationsta/pages/error.dart';
import 'package:destinationsta/pages/travel.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: const Color.fromARGB(0, 26, 19, 19),
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(AnimatedCharts());
}

class AnimatedCharts extends StatelessWidget {
  const AnimatedCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Charts",
      initialRoute: '/travel',
      routes: {
        '/travel': (context) => TravelPage(),
        '/': (context) => Error(),
      },
      theme: ThemeData(fontFamily: "Cera Pro"),
    );
  }
}
