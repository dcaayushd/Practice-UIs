import 'package:coffee_shop_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomizeNowButton extends StatelessWidget {
  const CustomizeNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: const BoxDecoration(
          color: kDarkBrownColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          "Customize now.",

          textScaler: const TextScaler.linear(1.5),
          style: varelaWhite.copyWith(fontWeight: FontWeight.bold),
        ));
  }
}
