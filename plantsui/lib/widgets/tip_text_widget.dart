import 'package:flutter/material.dart';
import 'package:plantsui/utils/plants_colors.dart';

class TipTextWidget extends StatelessWidget {
  const TipTextWidget({
    super.key,
    required this.optionsSelectedIndex,
    required this.tipText1,
    required this.tipText2,
  });

  final int optionsSelectedIndex;
  final String tipText1;
  final String tipText2;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: optionsSelectedIndex != -1 ? 1 : 0,
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: PlantColors.veryLightGreen,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              spreadRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tipText1,
              style: const TextStyle(
                color: PlantColors.darkGreen,
                fontSize: 12.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              tipText2,
              style: const TextStyle(
                color: PlantColors.mediumDarkGreen,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
