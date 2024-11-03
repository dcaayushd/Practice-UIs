// import 'dart:math';

// import 'package:bankify/home_page/tab_page.dart';
// import 'package:bankify/utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart';

// class LandingPage extends StatelessWidget {
//   const LandingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Delay for 2 seconds and open the notification page
//     Future.delayed(const Duration(seconds: 3), () {
//       Navigator.push<void>(
//         context,
//         MaterialPageRoute<void>(
//           builder: (BuildContext context) => const TabPage(),
//         ),
//       );
//     });

//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Stack(
//           children: [
//             // right top black
//             Positioned(
//               top: 20,
//               right: -70,
//               height: 250,
//               child: Transform.rotate(
//                 angle: 4.5,
//                 child: const Image(
//                   image: Svg('assets/svgs/svg-path.svg'),
//                   color: StoreColors.darkTeal,
//                 ),
//               ),
//             ),
//             // left side orangeish
//             Positioned(
//               top: 5,
//               left: -205,
//               height: 450,
//               child: Transform.rotate(
//                 angle: pi,
//                 child: const Image(
//                   image: Svg('assets/svgs/svg-path.svg'),
//                   color: StoreColors.darkBrown,
//                 ),
//               ),
//             ),
//             // Right side dark green
//             Positioned(
//               bottom: 180,
//               right: -220,
//               height: 450,
//               child: Transform.rotate(
//                 angle: 2 * pi,
//                 child: const Image(
//                   image: Svg('assets/svgs/svg-path.svg'),
//                   color: StoreColors.darkGreen,
//                 ),
//               ),
//             ),
//             Positioned(
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Transform.rotate(
//                   angle: 2 * pi,
//                   child: const Padding(
//                     padding: EdgeInsets.only(top: 200, right: 120),
//                     child: Image(
//                       height: 100,
//                       width: 90,
//                       image: Svg('assets/svgs/svg-path.svg'),
//                       color: StoreColors.darkTeal,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             // Right bottom corner side dark orange
//             Positioned(
//               bottom: -340,
//               right: -240,
//               height: 450,
//               child: Transform.flip(
//                 flipX: true,
//                 flipY: true,
//                 child: const Image(
//                   image: Svg('assets/svgs/svg-path.svg'),
//                   color: StoreColors.darkBrown,
//                 ),
//               ),
//             ),

//             // left bottom corner side
//             // some unknown color name haha
//             Positioned(
//               bottom: -130,
//               left: -250,
//               height: 450,
//               child: Transform.rotate(
//                 angle: pi * 0.5,
//                 child: const Image(
//                   image: Svg('assets/svgs/svg-path.svg'),
//                   color: StoreColors.lightPink,
//                 ),
//               ),
//             ),

//             const Positioned.fill(
//               bottom: 100,
//               child: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'warren',
//                       style: TextStyle(
//                         fontSize: 50,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     Text(
//                       'Warren conducts your financial life\nso you can make good money\ndecisions with confidence.',
//                       style: TextStyle(
//                         fontSize: 17,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }


import 'dart:math';

import 'package:bankify/home_page/tab_page.dart';
import 'package:bankify/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    _setupNavigation();
  }

  Future<void> _setupNavigation() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    
    Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const TabPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // right top black
            Positioned(
              top: 20,
              right: -70,
              height: 250,
              child: Transform.rotate(
                angle: 4.5,
                child: const Image(
                  image: Svg('assets/svgs/svg-path.svg'),
                  color: StoreColors.darkTeal,
                ),
              ),
            ),
            // left side orangeish
            Positioned(
              top: 5,
              left: -205,
              height: 450,
              child: Transform.rotate(
                angle: pi,
                child: const Image(
                  image: Svg('assets/svgs/svg-path.svg'),
                  color: StoreColors.darkBrown,
                ),
              ),
            ),
            // Right side dark green
            Positioned(
              bottom: 180,
              right: -220,
              height: 450,
              child: Transform.rotate(
                angle: 2 * pi,
                child: const Image(
                  image: Svg('assets/svgs/svg-path.svg'),
                  color: StoreColors.darkGreen,
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Transform.rotate(
                  angle: 2 * pi,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 200, right: 120),
                    child: Image(
                      height: 100,
                      width: 90,
                      image: Svg('assets/svgs/svg-path.svg'),
                      color: StoreColors.darkTeal,
                    ),
                  ),
                ),
              ),
            ),
            // Right bottom corner side dark orange
            Positioned(
              bottom: -340,
              right: -240,
              height: 450,
              child: Transform.flip(
                flipX: true,
                flipY: true,
                child: const Image(
                  image: Svg('assets/svgs/svg-path.svg'),
                  color: StoreColors.darkBrown,
                ),
              ),
            ),

            // left bottom corner side
            // some unknown color name haha
            Positioned(
              bottom: -130,
              left: -250,
              height: 450,
              child: Transform.rotate(
                angle: pi * 0.5,
                child: const Image(
                  image: Svg('assets/svgs/svg-path.svg'),
                  color: StoreColors.lightPink,
                ),
              ),
            ),

            const Positioned.fill(
              bottom: 100,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'warren',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Warren conducts your financial life\nso you can make good money\ndecisions with confidence.',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}