import 'package:charts_google/Models/Car.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as Charts;


class SimpleLineChart extends StatelessWidget {

  SimpleLineChart();

  factory SimpleLineChart.withSampleData(){
    return new SimpleLineChart();
  }

  @override
  Widget build(BuildContext context) {
    return new Charts.LineChart(_getData(), animate: false,);
  }

  List<Charts.Series<Car, int>> _getData(){
    final carList = [
      new Car("0", 1),
      new Car("1", 3),
      new Car("2", 4),
      new Car("3", 10),
    ];

    return [
      new Charts.Series(id: "2", data: carList, domainFn: (Car car, _) => int.parse(car.year), measureFn: (Car car, _) => car.sales)
    ];
  }
}
