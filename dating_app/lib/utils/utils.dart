import 'package:flutter/material.dart';

class DatingAppColors {
  static const Color purple = Color(0xFFb0b3ff);
  static const Color darkBlue = Color(0xFF96a6ff);
  static const Color lightBlue = Color(0xFFaab8ff);
  static const Color skyBlue = Color(0xFFddf5ff);
  static const Color lightYellow = Color(0xFFfffcea);
  static const Color lightOrange = Color(0xFFffd88d);
  static const Color lightGreen = Color(0xFFdbffa1);
  static const Color lightPink = Color(0xFFf7ade1);

  static const List<Color> colorsList = [
    skyBlue,
    Colors.white,
    lightOrange,
    lightGreen,
    lightPink,
  ];
}

class DatingAppNames {
  static const randomNamesList = <String>[
    'Natasha Rom',
    'Natalie Clarke',
    'Catalin Snow',
    'Catherine Sky',
    'Carolin Hill',
    'Rebecca Smith',
    'Hanna Kay',
    'Yana Koval',
  ];

  static String getRandomName(int index) {
    return randomNamesList[index % randomNamesList.length];
  }
}

class DatingAppImages {
  static List<String> getShuffledImageList() {
    final list = [
      'assets/images/profile_1.jpeg',
      'assets/images/profile_2.jpeg',
      'assets/images/profile_3.jpeg',
      'assets/images/profile_4.jpeg',
      'assets/images/profile_5.jpeg',
      'assets/images/profile_6.jpeg',
    ];
    list.shuffle();
    return list;
  }
}
