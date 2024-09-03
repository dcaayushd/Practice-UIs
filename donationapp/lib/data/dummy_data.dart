import 'package:donationapp/models/item.dart';

import '../views/app_theme/app_assets.dart';

List<Item> theyNeedYourHelp = [
  Item(
      name: "Monkeys",
      category: "Animals",
      progress: 23.0,
      country: "Ethiopia",
      image: AppAssets.homeScreenAssets.theyNeedYourHelpAnimal),
  Item(
      name: "Farmers",
      category: "People",
      progress: 14.0,
      country: "India",
      image: AppAssets.homeScreenAssets.theyNeedYourHelpFarmer),
  Item(
      name: "Girls",
      category: "People",
      progress: 7.0,
      country: "Pakistan",
      image: AppAssets.homeScreenAssets.theyNeedYourHelpGirl),
  Item(
      name: "Children",
      category: "People",
      progress: 30.0,
      country: "Morocco",
      image: AppAssets.homeScreenAssets.theyNeedYourHelpKid),
  Item(
      name: "Ukraine",
      category: "Country",
      progress: 72.0,
      country: "Ukraine",
      image: AppAssets.homeScreenAssets.theyNeedYourHelpUkraine)
];
