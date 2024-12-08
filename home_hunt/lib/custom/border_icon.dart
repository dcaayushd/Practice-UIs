import 'package:flutter/material.dart';
import 'package:home_hunt/utils/constants.dart';

class BorderIcon extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? width, height;

  const BorderIcon({
    super.key,
    required this.child,
    this.padding,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          border: Border.all(
            color: colorGray.withAlpha(40),
            width: 2,
          ),
        ),
        padding: padding ?? const EdgeInsets.all(8.0),
        child: Center(child: child));
  }
}
