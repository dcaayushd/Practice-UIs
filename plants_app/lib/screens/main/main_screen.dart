import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'favorites/favorites_screen.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';
import 'scan/scanner_screen.dart';
import '../../utils/constants.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int stackIndex = 0;
  changIndex(int newIndex) {
    if (stackIndex != newIndex) {
      setState(() {
        stackIndex = newIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: kPrimaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: GNav(
          backgroundColor: kPrimaryColor,
          color: Colors.white,
          activeColor: kPrimaryColor,
          tabBackgroundColor: Colors.white.withOpacity(0.9),
          gap: 8,
          padding: const EdgeInsets.all(8),
          onTabChange: (value) {
            changIndex(value);
          },
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.qr_code_scanner_rounded,
              text: 'Identify',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Saved',
            ),
            GButton(
              icon: Icons.person_2_outlined,
              text: 'Profile',
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: IndexedStack(
        index: stackIndex,
        children: const [
          HomeScreen(),
          ScannerScreen(),
          FavoritesScreen(),
          ProfileScreen()
        ],
      )),
    );
  }
}
