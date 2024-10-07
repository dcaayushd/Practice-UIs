import 'package:flutter/material.dart';
import '../widgets/shadow_box.dart';

class Heading extends StatelessWidget {
  final String heading;
  final IconData leftIcon;
  final IconData rightIcon;
  final Color leftColor;
  final Color rightColor;
  final double fontSize;
  final Function()? onLeftTap;
  final Function()? onRightTap;
  const Heading({
    required this.heading,
    required this.leftIcon,
    required this.onLeftTap,
    required this.onRightTap,
    required this.rightIcon,
    this.fontSize = 30,
    this.leftColor = Colors.white,
    this.rightColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onLeftTap ?? () {},
          child: ShadowBox(
            width: 57,
            height: 60,
            color: leftColor,
            child: Icon(leftIcon),
          ),
        ),
        Text(
          heading,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: onRightTap ?? () {},
          child: ShadowBox(
            width: 57,
            height: 60,
            color: rightColor,
            child: Icon(rightIcon),
          ),
        ),
      ],
    );
  }
}
