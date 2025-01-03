// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// const buddyfitTitle = "Workout at home with our trainers!";
// const buddyfitDescription =
//     "Buddyfit is the first app that allows everyone to workout from home";

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       theme: CupertinoThemeData(
//         scaffoldBackgroundColor: Colors.black,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: SafeArea(
//         child: ListView(
//           children: [
//             const SizedBox(height: 24.0),
//             _TopBar(),
//             _Content(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _TopBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 32.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "FRIDAY 14 MAY",
//                 style: TextStyle(
//                   color: Colors.white
//                       .withValues(red: 255, green: 255, blue: 255, alpha: 0.5),
//                 ),
//               ),
//               const SizedBox(height: 16.0),
//               Text(
//                 "Today",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             height: 40.0,
//             width: 40.0,
//             decoration: BoxDecoration(
//               color: Color(0xff222222),
//               borderRadius: BorderRadius.circular(60.0),
//             ),
//             child: Icon(CupertinoIcons.profile_circled, size: 40.0),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _Content extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(32.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(child: _CRTurns2()),
//                 SizedBox(width: 16),
//                 Expanded(child: _DontMiss()),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(child: _Buddyfit()),
//                 SizedBox(width: 16),
//                 Expanded(child: _AppleArcade()),
//               ],
//             ),
//             const SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(child: _CRTurns2()),
//                 SizedBox(width: 16),
//                 Expanded(child: _DontMiss()),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _CRTurns2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0xff222222),
//           borderRadius: BorderRadius.circular(16.0),
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//               Colors.white
//                   .withValues(red: 255, green: 255, blue: 255, alpha: 0.5),
//               BlendMode.dstATop,
//             ),
//             image: AssetImage("assets/cr_comm.png"),
//           ),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 32.0, top: 32.0),
//               child: Text(
//                 "ANNIVERSARY EVENT",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Padding(
//               padding: const EdgeInsets.only(left: 32.0),
//               child: Text(
//                 "Clash Royale turns 10!",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Container(
//               decoration: BoxDecoration(
//                 color: Color(0xff222222),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   children: [
//                     Image.asset("assets/cr.png", height: 60.0),
//                     const SizedBox(width: 16.0),
//                     Expanded(
//                       child: Text(
//                         "Clash Royale",
//                         style: TextStyle(color: Colors.white, fontSize: 18.0),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(200.0),
//                         color: Color(0xff343434),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           vertical: 8.0,
//                           horizontal: 16.0,
//                         ),
//                         child: Text(
//                           "GET",
//                           style: TextStyle(color: Color(0xff2284fa)),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _DontMiss extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0xff222222),
//           borderRadius: BorderRadius.circular(16.0),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 32.0, top: 32.0),
//               child: Text(
//                 "LIMITED-TIME EVENT",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Padding(
//               padding: const EdgeInsets.only(left: 32.0),
//               child: Text(
//                 "Don't miss these gaming events",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Padding(
//               padding: const EdgeInsets.all(32.0),
//               child: GridView.count(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 crossAxisCount: 3,
//                 crossAxisSpacing: 16.0,
//                 mainAxisSpacing: 16.0,
//                 children: [
//                   Image.asset("assets/cr.png"),
//                   Image.asset("assets/ab.png"),
//                   Image.asset("assets/poke.png"),
//                   Image.asset("assets/ab.png"),
//                   Image.asset("assets/poke.png"),
//                   Image.asset("assets/cr.png"),
//                   Image.asset("assets/poke.png"),
//                   Image.asset("assets/ab.png"),
//                   Image.asset("assets/cr.png"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _Buddyfit extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0xff222222),
//           borderRadius: BorderRadius.circular(16.0),
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//               Colors.white
//                   .withValues(red: 255, green: 255, blue: 255, alpha: 0.6),
//               BlendMode.dstATop,
//             ),
//             image: AssetImage("assets/bf_comm.png"),
//           ),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 32.0, top: 32.0),
//               child: Text(
//                 "BEHIND THE APP",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Padding(
//               padding: const EdgeInsets.only(left: 32.0),
//               child: Text(
//                 buddyfitTitle,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 32.0),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _AppleArcade extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0xff222222),
//           borderRadius: BorderRadius.circular(16.0),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 32.0, top: 32.0),
//               child: Text(
//                 "APPLE ARCADE",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Padding(
//               padding: const EdgeInsets.only(left: 32.0),
//               child: Text(
//                 "Top Apple Arcade games this week",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 32.0),
//               child: Column(
//                 children: [
//                   _ListItem(
//                     icon: "assets/cr.png",
//                     title: "Clash Royale",
//                   ),
//                   _ListItem(
//                     icon: "assets/poke.png",
//                     title: "Pokemon Go",
//                   ),
//                   _ListItem(
//                     icon: "assets/ab.png",
//                     title: "Angry Birds",
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _ListItem extends StatelessWidget {
//   final String icon;
//   final String title;

//   const _ListItem({required this.icon, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         const SizedBox(height: 4.0),
//         SizedBox(
//           height: 60.0,
//           child: Row(
//             children: [
//               Image.asset(icon, height: 60.0),
//               const SizedBox(width: 16.0),
//               Expanded(
//                 child: Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                     letterSpacing: -0.4,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//               const SizedBox(width: 8.0),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(200.0),
//                   color: const Color(0xff343434),
//                 ),
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 8.0,
//                   horizontal: 16.0,
//                 ),
//                 child: const Text(
//                   "GET",
//                   style: TextStyle(color: Color(0xff2284fa)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(height: 16.0),
//         Container(
//           height: 0.5,
//           width: double.infinity,
//               color: Colors.white.withValues(red: 255, green: 255, blue: 255, alpha: 0.5),

//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       theme: const CupertinoThemeData(
//         brightness: Brightness.dark,
//         primaryColor: CupertinoColors.systemBlue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       backgroundColor: CupertinoColors.black,
//       child: CustomScrollView(
//         slivers: [
//           const CupertinoSliverNavigationBar(
//             largeTitle: Text('Today'),
//             backgroundColor: CupertinoColors.black,
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildFeaturedSection(),
//                   const SizedBox(height: 30),
//                   _buildArcadeSection(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFeaturedSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         _FeaturedCard(
//           tag: 'ANNIVERSARY EVENT',
//           title: 'Clash Royale turns 10!',
//           image: 'assets/cr_comm.png',
//           appIcon: 'assets/cr.png',
//           appName: 'Clash Royale',
//           category: 'Strategy',
//         ),
//         const SizedBox(height: 20),
//         _FeaturedCard(
//           tag: 'BEHIND THE APP',
//           title: 'Workout at home with our trainers!',
//           image: 'assets/bf_comm.png',
//           appIcon: 'assets/bf_comm.png',
//           appName: 'BuddyFit',
//           category: 'Health & Fitness',
//         ),
//       ],
//     );
//   }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.systemBlue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Today'),
            backgroundColor: CupertinoColors.black,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeaturedSection(),
                  const SizedBox(height: 30),
                  _buildMessagingSection(),
                  const SizedBox(height: 30),
                  _buildArcadeSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FeaturedCard(
          tag: 'ANNIVERSARY EVENT',
          title: 'Clash Royale turns 10!',
          image: 'assets/cr_comm.png',
          appIcon: 'assets/cr.png',
          appName: 'Clash Royale',
          category: 'Strategy',
        ),
      ],
    );
  }

  Widget _buildMessagingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Messaging Apps',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                color: CupertinoColors.systemBlue,
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _MessagingAppCard(
                appName: 'WhatsApp',
                category: 'Social Networking',
                rating: 4.8,
                reviews: '12M',
                icon: 'assets/wa.png',
                screenshots: [
                  'assets/wa_1.png',
                  'assets/wa_2.png',
                  'assets/wa_3.png',
                  'assets/wa_4.png',
                ],
              ),
              const SizedBox(width: 20),
              _MessagingAppCard(
                appName: 'Telegram',
                category: 'Social Networking',
                rating: 4.7,
                reviews: '8.2M',
                icon: 'assets/tg.png',
                screenshots: [
                  'assets/tg_1.png',
                  'assets/tg_2.png',
                  'assets/tg_3.png',
                  'assets/tg_4.png',
                ],
              ),
              const SizedBox(width: 20),
              _MessagingAppCard(
                appName: 'Signal',
                category: 'Social Networking',
                rating: 4.6,
                reviews: '2.1M',
                icon: 'assets/signal.png',
                screenshots: [
                  'assets/sg_1.png',
                  'assets/sg_2.png',
                  'assets/sg_3.png',
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildArcadeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Apple Arcade',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.white,
          ),
        ),
        const SizedBox(height: 16),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: const Color(0xFF1C1C1E),
            child: Column(
              children: [
                _ArcadeListItem(
                  icon: 'assets/cr.png',
                  title: 'Clash Royale',
                  category: 'Strategy',
                ),
                _ArcadeListItem(
                  icon: 'assets/poke.png',
                  title: 'Pokemon Go',
                  category: 'Adventure',
                ),
                _ArcadeListItem(
                  icon: 'assets/ab.png',
                  title: 'Angry Birds',
                  category: 'Puzzle',
                  showDivider: false,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _MessagingAppCard extends StatelessWidget {
  final String appName;
  final String category;
  final double rating;
  final String reviews;
  final String icon;
  final List<String> screenshots;

  const _MessagingAppCard({
    required this.appName,
    required this.category,
    required this.rating,
    required this.reviews,
    required this.icon,
    required this.screenshots,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(icon, height: 60, width: 60),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appName,
                        style: const TextStyle(
                          color: CupertinoColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        category,
                        style: TextStyle(
                          color: CupertinoColors.white.withOpacity(0.6),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                CupertinoButton(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF2C2C2E),
                  child: const Text('GET'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: screenshots.length,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  screenshots[index],
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  rating.toString(),
                  style: const TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  CupertinoIcons.star_fill,
                  size: 12,
                  color: CupertinoColors.white.withOpacity(0.6),
                ),
                const SizedBox(width: 4),
                Text(
                  '($reviews)',
                  style: TextStyle(
                    color: CupertinoColors.white.withOpacity(0.6),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget _buildArcadeSection() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       const Text(
//         'Apple Arcade',
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           color: CupertinoColors.white,
//         ),
//       ),
//       const SizedBox(height: 16),
//       ClipRRect(
//         borderRadius: BorderRadius.circular(12),
//         child: Container(
//           color: const Color(0xFF1C1C1E),
//           child: Column(
//             children: [
//               _ArcadeListItem(
//                 icon: 'assets/cr.png',
//                 title: 'Clash Royale',
//                 category: 'Strategy',
//               ),
//               _ArcadeListItem(
//                 icon: 'assets/poke.png',
//                 title: 'Pokemon Go',
//                 category: 'Adventure',
//               ),
//               _ArcadeListItem(
//                 icon: 'assets/ab.png',
//                 title: 'Angry Birds',
//                 category: 'Puzzle',
//                 showDivider: false,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   );
// }

class _FeaturedCard extends StatelessWidget {
  final String tag;
  final String title;
  final String image;
  final String appIcon;
  final String appName;
  final String category;

  const _FeaturedCard({
    required this.tag,
    required this.title,
    required this.image,
    required this.appIcon,
    required this.appName,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: const Color(0xFF1C1C1E),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    CupertinoColors.black.withOpacity(0.3),
                    BlendMode.darken,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    tag,
                    style: const TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(appIcon, height: 50),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appName,
                          style: const TextStyle(
                            color: CupertinoColors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          category,
                          style: TextStyle(
                            color: CupertinoColors.white.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF2C2C2E),
                    child: const Text('GET'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArcadeListItem extends StatelessWidget {
  final String icon;
  final String title;
  final String category;
  final bool showDivider;

  const _ArcadeListItem({
    required this.icon,
    required this.title,
    required this.category,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(icon, height: 50),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      category,
                      style: TextStyle(
                        color: CupertinoColors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoButton(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF2C2C2E),
                child: const Text('GET'),
                onPressed: () {},
              ),
            ],
          ),
        ),
        if (showDivider)
          Divider(
            height: 1,
            color: CupertinoColors.white.withOpacity(0.1),
          ),
      ],
    );
  }
}
