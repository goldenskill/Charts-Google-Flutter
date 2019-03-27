import 'package:charts_google/Models/OrdinalSales.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as Charts;


class GroupedBarChart extends StatelessWidget {

  GroupedBarChart();

  factory GroupedBarChart.withSampleData() {
    return new GroupedBarChart();
  }

  @override
  Widget build(BuildContext context) {
    return new Charts.BarChart(_getData(),
      barGroupingType: Charts.BarGroupingType.grouped,);
  }

  _getData(){
    final desktopSales = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    final tableSales = [
      new OrdinalSales('2014', 25),
      new OrdinalSales('2015', 50),
      new OrdinalSales('2016', 10),
      new OrdinalSales('2017', 20),
    ];

    final mobileSales = [
      new OrdinalSales('2014', 10),
      new OrdinalSales('2015', 15),
      new OrdinalSales('2016', 50),
      new OrdinalSales('2017', 45),
    ];

    return [
      new Charts.Series(id: 'Desktop', data: desktopSales, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales),
      new Charts.Series(id: 'Tablet', data: tableSales, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales),
      new Charts.Series(id: 'Mobile', data: mobileSales, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales)
    ];
  }
}
