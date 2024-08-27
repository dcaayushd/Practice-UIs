import 'package:eventify/screens/choose_event_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              padding: const EdgeInsets.only(
                  top: 100, right: 40, left: 40, bottom: 50),
              decoration: BoxDecoration(color: Colors.red.shade100),
              width: double.infinity,
              child: Lottie.asset("assets/88146-event-venue.json"),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.black,
                    highlightColor: Colors.red,
                    child: const Text(
                      'Schedule an event?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildShimmerContainer(180),
                        const SizedBox(width: 10),
                        _buildShimmerContainer(100),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildShimmerContainer(100),
                        const SizedBox(width: 10),
                        _buildShimmerContainer(250),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildShimmerContainer(40),
                        const SizedBox(width: 10),
                        _buildShimmerContainer(200),
                        const SizedBox(width: 10),
                        _buildShimmerContainer(120),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildButton("Today", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ChooseEventScreen(),
                      ),
                    );
                  }),
                  const SizedBox(height: 12),
                  _buildButton("Tomorrow", () {}),
                  const SizedBox(height: 12),
                  _buildButton("Next week", () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerContainer(double width) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.grey.shade300,
      child: Container(
        width: width,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      elevation: 0,
      highlightElevation: 0,
      minWidth: double.infinity,
      color: Colors.grey.shade200,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
