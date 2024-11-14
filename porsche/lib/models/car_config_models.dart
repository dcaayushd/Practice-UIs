import 'package:flutter/material.dart';

class CarConfigModels {
  final String configName;
  final IconData iconData;

  const CarConfigModels({
    required this.configName,
    required this.iconData,
  });

  static List<CarConfigModels> dummyData = <CarConfigModels>[
    const CarConfigModels(
        configName: '30 Day Return', iconData: Icons.calendar_today),
    const CarConfigModels(configName: '30 Day Warranty', iconData: Icons.assignment),
    const CarConfigModels(configName: 'Exterior', iconData: Icons.brush),
    const CarConfigModels(configName: 'Interior', iconData: Icons.weekend),
    const CarConfigModels(configName: 'Performance', iconData: Icons.speed),
    const CarConfigModels(configName: 'Safety', iconData: Icons.security),
  ];
}
