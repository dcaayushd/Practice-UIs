class PowerChartModel {
  final List<DataPoint> dataPoints;

  const PowerChartModel({
    required this.dataPoints,
  }) : assert(dataPoints.length == 18);

  static final dummyRandomPower = PowerChartModel(
    dataPoints: [
      const DataPoint(increase: 30, decrease: 35),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 44, decrease: 50),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 37, decrease: 56),
      const DataPoint(increase: 26, decrease: 41),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 88, decrease: 93),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 40, decrease: 77),
      const DataPoint(increase: 66, decrease: 35),
      const DataPoint(increase: 38, decrease: 50),
      const DataPoint(increase: 0, decrease: 0),
      const DataPoint(increase: 0, decrease: 0),
    ],
  );
}

class DataPoint {
  final double increase;
  final double decrease;

  const DataPoint({
    required this.increase,
    required this.decrease,
  });
}
