import 'package:charts_google/Models/Car.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as Charts;

class SimplePieChart extends StatelessWidget {


  SimplePieChart();

  factory SimplePieChart.withSampleData(){
    return new SimplePieChart();
  }

  @override
  Widget build(BuildContext context) {
    return new Charts.PieChart(_getData(), animate: true,);
  }


  List<Charts.Series<Car, String>> _getData(){
    var simpleData = [
      new Car("2000", 10),
      new Car("2002", 40),
      new Car("2003", 30),
      new Car("2010", 20),
    ];

    return [
      new Charts.Series(
          id: "1",
          data: simpleData,
          domainFn: (Car car, _) => car.year,
          measureFn: (Car car, _) => car.sales),
    ];
  }
}

