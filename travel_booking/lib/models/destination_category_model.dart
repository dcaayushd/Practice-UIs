import 'package:flutter/material.dart';

class DestinationCategoryModel {
  final String categoryName;
  final IconData iconData;

  const DestinationCategoryModel({
    required this.categoryName,
    required this.iconData,
  });

  static List<DestinationCategoryModel> destinationCategories = [
    const DestinationCategoryModel(
      categoryName: 'All',
      iconData: Icons.grid_view_rounded,
    ),
    const DestinationCategoryModel(
      categoryName: 'City',
      iconData: Icons.location_city,
    ),
    const DestinationCategoryModel(
      categoryName: 'Beach',
      iconData: Icons.beach_access,
    ),
    const DestinationCategoryModel(
      categoryName: 'Mountain',
      iconData: Icons.terrain,
    ),
    const DestinationCategoryModel(
      categoryName: 'Desert',
      iconData: Icons.landscape,
    ),
    const DestinationCategoryModel(
      categoryName: 'Forest',
      iconData: Icons.eco,
    ),
    const DestinationCategoryModel(
      categoryName: 'Lake',
      iconData: Icons.water,
    ),
    const DestinationCategoryModel(
      categoryName: 'River',
      iconData: Icons.alt_route,
    ),
    const DestinationCategoryModel(
      categoryName: 'Island',
      iconData: Icons.landscape,
    ),
  ];
}
