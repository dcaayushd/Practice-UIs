import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const buddyfitTitle = "Workout at home with our trainers!";
const buddyfitDescription =
    "Buddyfit is the first app that allows everyone to workout from home";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 24.0),
            _TopBar(),
            _Content(),
          ],
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "FRIDAY 14 MAY",
                style: TextStyle(
                  color: Colors.white
                      .withValues(red: 255, green: 255, blue: 255, alpha: 0.5),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                "Today",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Color(0xff222222),
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Icon(CupertinoIcons.profile_circled, size: 40.0),
          ),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _CRTurns2()),
                SizedBox(width: 16),
                Expanded(child: _DontMiss()),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _Buddyfit()),
                SizedBox(width: 16),
                Expanded(child: _AppleArcade()),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _CRTurns2()),
                SizedBox(width: 16),
                Expanded(child: _DontMiss()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CRTurns2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white
                  .withValues(red: 255, green: 255, blue: 255, alpha: 0.5),
              BlendMode.dstATop,
            ),
            image: AssetImage("assets/cr_comm.png"),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 32.0),
              child: Text(
                "ANNIVERSARY EVENT",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                "Clash Royale turns 10!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff222222),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset("assets/cr.png", height: 60.0),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Text(
                        "Clash Royale",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Color(0xff343434),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Text(
                          "GET",
                          style: TextStyle(color: Color(0xff2284fa)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DontMiss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 32.0),
              child: Text(
                "LIMITED-TIME EVENT",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                "Don't miss these gaming events",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  Image.asset("assets/cr.png"),
                  Image.asset("assets/ab.png"),
                  Image.asset("assets/poke.png"),
                  Image.asset("assets/ab.png"),
                  Image.asset("assets/poke.png"),
                  Image.asset("assets/cr.png"),
                  Image.asset("assets/poke.png"),
                  Image.asset("assets/ab.png"),
                  Image.asset("assets/cr.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Buddyfit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white
                  .withValues(red: 255, green: 255, blue: 255, alpha: 0.6),
              BlendMode.dstATop,
            ),
            image: AssetImage("assets/bf_comm.png"),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 32.0),
              child: Text(
                "BEHIND THE APP",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                buddyfitTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}

class _AppleArcade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 32.0),
              child: Text(
                "APPLE ARCADE",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                "Top Apple Arcade games this week",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  _ListItem(
                    icon: "assets/cr.png",
                    title: "Clash Royale",
                  ),
                  _ListItem(
                    icon: "assets/poke.png",
                    title: "Pokemon Go",
                  ),
                  _ListItem(
                    icon: "assets/ab.png",
                    title: "Angry Birds",
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

class _ListItem extends StatelessWidget {
  final String icon;
  final String title;

  const _ListItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 4.0),
        SizedBox(
          height: 60.0,
          child: Row(
            children: [
              Image.asset(icon, height: 60.0),
              const SizedBox(width: 16.0),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white, 
                    fontSize: 18.0,
                    letterSpacing: -0.4,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 8.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  color: const Color(0xff343434),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: const Text(
                  "GET",
                  style: TextStyle(color: Color(0xff2284fa)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Container(
          height: 0.5,
          width: double.infinity,
              color: Colors.white.withValues(red: 255, green: 255, blue: 255, alpha: 0.5),

        ),
      ],
    );
  }
}