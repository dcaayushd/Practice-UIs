class CarListingModel {
  final String assetPath;
  final String name;

  const CarListingModel({required this.assetPath, required this.name});

  static List<CarListingModel> list = [
    const CarListingModel(assetPath: 'assets/bmw1.png', name: 'BMW Q1'),
    const CarListingModel(assetPath: 'assets/porsche1.png', name: 'Porsche 911 GT3'),
  ];
}
