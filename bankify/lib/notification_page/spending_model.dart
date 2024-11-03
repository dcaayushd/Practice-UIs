import 'package:bankify/utils/colors.dart';
import 'package:flutter/material.dart';

class SpendingModel {
  final Color backgroundColor;
  final Color iconColor;
  final String name;
  final String assetName;
  final String price;

  const SpendingModel({
    required this.backgroundColor,
    required this.iconColor,
    required this.name,
    required this.assetName,
    required this.price,
  });

  static List<SpendingModel> dummy() {
    return [
      const SpendingModel(
        backgroundColor: StoreColors.lightPink,
        iconColor: Colors.black,
        name: 'DigitalOcean',
        assetName: 'assets/icons/digital_ocean.png',
        price: '\$125.00',
      ),
      const SpendingModel(
        backgroundColor: StoreColors.darkGreen,
        iconColor: Colors.white,
        name: 'Github Pro',
        assetName: 'assets/icons/github.png',
        price: '\$175.00',
      ),
      const SpendingModel(
        backgroundColor: StoreColors.darkBrown,
        iconColor: Colors.white,
        name: 'Codepen Pro',
        assetName: 'assets/icons/codepen.png',
        price: '\$200.00',
      ),
    ];
  }
}
