import 'package:bookshub/utils/utils_colors.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 200,
        width: 350,
        color: BookStoreColors.darkBlue,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/gradient.png',
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: const Alignment(-0.9, -1.7),
                    colors: [
                      BookStoreColors.darkRed,
                      BookStoreColors.darkRed.withOpacity(0.3),
                    ],
                    radius: 1,
                    focalRadius: 1,
                    stops: const [0, 1],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
