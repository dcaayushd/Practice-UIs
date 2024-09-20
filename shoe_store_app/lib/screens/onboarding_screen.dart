import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: h * 0.55,
                width: w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      painter: Circles(maxWidth: w, numberOfCircles: 4),
                    ),
                    Positioned.fill(
                      right: 30,
                      left: -50,
                      bottom: 20,
                      child: Transform(
                        transform: Matrix4.rotationZ(-0.7),
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/onboarding/onboarding_shoe.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Great way to lift\nup your style!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  height: 0.9,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Complete your style with awesome shoes\n and sneakers from us.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.4,
                  color: Colors.white70,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 50),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                width: w - 20,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Get Started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    height: 0.9,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Circles extends CustomPainter {
  final double maxWidth;
  final int numberOfCircles;

  Circles({required this.maxWidth, required this.numberOfCircles});

  @override
  void paint(Canvas canvas, Size size) {
    final cHeight = size.height;
    final cWidth = size.width;
    for (int i = numberOfCircles; i > 0; i--) {
      canvas.drawCircle(
        Offset(cWidth / 2, cHeight / 2),
        90 + i * 15 + i * 7,
        Paint()
          ..style = PaintingStyle.stroke
          ..color = Colors.grey.withOpacity(0.4)
          ..strokeWidth = 1.1
          ..strokeCap = StrokeCap.round,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}