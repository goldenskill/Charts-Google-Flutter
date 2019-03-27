import 'package:charts_flutter/flutter.dart' as Charts;
import 'package:flutter/material.dart';


class SimpleBarChart extends StatelessWidget {


  SimpleBarChart();

  List<Charts.Series<Car, String>> listCar = getData();

  factory SimpleBarChart.withSampleData() {
    return new SimpleBarChart();
  }

  @override
  Widget build(BuildContext context) {
    return new Charts.BarChart(
        listCar,
        animate: false);
  }
}

getData(){
  final carList = [
    new Car("2000", 100),
    new Car("2001", 50),
    new Car("2002", 65),

  ];

  return [Charts.Series<Car, String>(
    data: carList,
    id: "Car Year",
    colorFn: (_, __) => Charts.MaterialPalette.blue.shadeDefault,
    domainFn: (Car sales, _) => sales.year,
    measureFn: (Car sales, _) => sales.sales,
  )];
}

class Car{
  String year;
  int sales;

  Car(this.year, this.sales);

}
