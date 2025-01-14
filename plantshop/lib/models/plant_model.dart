import 'package:flutter/material.dart';

class FlowerModel {
  final String name;
  final Color color;
  final int daysUntilHarvest;
  final String assetPath;

  const FlowerModel({
    required this.name,
    required this.color,
    required this.daysUntilHarvest,
    required this.assetPath,
  });

  static List<FlowerModel> flowers = [
    const FlowerModel(
      name: 'Rose',
      color: Colors.red,
      daysUntilHarvest: 30,
      assetPath: 'assets/plant_1.png',
    ),
    const FlowerModel(
      name: 'Sunflower',
      color: Colors.yellow,
      daysUntilHarvest: 60,
      assetPath: 'assets/plant_2.png',
    ),
    const FlowerModel(
      name: 'Tulip',
      color: Colors.pink,
      daysUntilHarvest: 45,
      assetPath: 'assets/plant_3.png',
    ),
    const FlowerModel(
      name: 'Daisy',
      color: Colors.white,
      daysUntilHarvest: 20,
      assetPath: 'assets/plant_4.png',
    ),
    const FlowerModel(
      name: 'Lily',
      color: Colors.orange,
      daysUntilHarvest: 40,
      assetPath: 'assets/plant_5.png',
    ),
    const FlowerModel(
      name: 'Orchid',
      color: Colors.purple,
      daysUntilHarvest: 90,
      assetPath: 'assets/plant_6.png',
    ),
  ];
}
