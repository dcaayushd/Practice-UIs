import 'package:flutter/material.dart';
import 'package:fastfoodapp/utils/constants.dart';

class SquareIconButton extends StatelessWidget {
  final Function() onPressed;
  final Color iconColor, buttonColor;
  final double width;
  final IconData icon;
  final double borderRadius;

  const SquareIconButton(
      {super.key,
      required this.onPressed,
      this.iconColor = colorGreen,
      this.buttonColor = Colors.white,
      this.width = 70,
      required this.icon,
      this.borderRadius = 10});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
