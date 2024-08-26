import 'package:flutter/material.dart';

AnimationController createPlaneAnimationController(TickerProvider vsync) {
  return AnimationController(
    vsync: vsync,
    duration: const Duration(seconds: 3),
  );
}

Animation<double> createPlaneAnimation(AnimationController controller) {
  return Tween<double>(begin: 0, end: 20).animate(
    CurvedAnimation(parent: controller, curve: Curves.elasticOut),
  );
}

AnimationController createCountAnimationController(TickerProvider vsync) {
  return AnimationController(
    vsync: vsync,
    duration: const Duration(seconds: 1),
  );
}

Animation<int> createHelipadCountAnimation(AnimationController controller) {
  return IntTween(begin: 0, end: 28).animate(controller);
}

Animation<int> createGenerationCountAnimation(AnimationController controller) {
  return IntTween(begin: 0, end: 6).animate(controller);
}

AnimationController createLogoAnimationController(TickerProvider vsync) {
  return AnimationController(
    vsync: vsync,
    duration: const Duration(seconds: 2),
  );
}

Animation<double> createLogoAnimation(AnimationController controller) {
  return Tween<double>(begin: 0, end: 1).animate(
    CurvedAnimation(parent: controller, curve: Curves.easeIn),
  );
}

AnimationController createContainerAnimationController(TickerProvider vsync) {
  return AnimationController(
    vsync: vsync,
    duration: const Duration(milliseconds: 900),
  );
}
