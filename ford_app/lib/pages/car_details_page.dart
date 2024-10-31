import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ford_app/utilities/colors.dart';

class CarDetailPage extends StatefulWidget {
  const CarDetailPage({super.key});

  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(top: 70, bottom: 50),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    CupertinoIcons.arrow_left,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Icon(
                    isFavorite
                        ? CupertinoIcons.heart_fill
                        : CupertinoIcons.heart,
                    size: 30,
                    color: isFavorite ? Colors.red : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ListView(
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  child: Container(
                    width: 300,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 30,
                          right: 10,
                          top: 10,
                          bottom: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/cars/ford1/car1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: FordColors.blue,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              CupertinoIcons.heart_fill,
                              size: 34,
                              color: isFavorite ? Colors.red : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  margin: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 30, right: 10),
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/cars/ford1/car3.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: SizedBox(
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/cars/ford1/car4.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'AC Cobra \nFord Classic',
              style: TextStyle(
                  fontSize: 34, fontWeight: FontWeight.w800, height: 1.1),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 65,
                    height: 65,
                    child: Image.asset(
                      'assets/profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '20 Nov, 2025',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        color: Colors.grey,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'By ELLA SULLIVAN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        fontFamily: 'Roboto',
                        letterSpacing: -.2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  height: 1.2,
                  color: Colors.grey,
                  fontFamily: 'Roboto',
                  letterSpacing: -.1,
                ),
                children: [
                  TextSpan(
                      text:
                          'This is a classic car that has been in the family for generations. '
                          'It has been well maintained and is in excellent condition. '
                          'This is a classic car that has been in the family for generations. '
                          'It has been well maintained and is in excellent condition. '
                          'The car has been driven by only one person and has been kept in '
                          'a garage when not in... '),
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      color: FordColors.blue,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
