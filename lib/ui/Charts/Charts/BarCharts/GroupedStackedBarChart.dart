import 'package:charts_google/Models/OrdinalSales.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as Charts;


class GroupedStackedBarChart extends StatelessWidget {

  GroupedStackedBarChart();

  factory GroupedStackedBarChart.withSampleData() {
    return new GroupedStackedBarChart();
  }

  @override
  Widget build(BuildContext context) {
    return new Charts.BarChart(_getData(),
      barGroupingType: Charts.BarGroupingType.groupedStacked,);
  }

  _getData(){
    final desktopSalesB = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    final tableSalesB = [
      new OrdinalSales('2014', 25),
      new OrdinalSales('2015', 50),
      new OrdinalSales('2016', 10),
      new OrdinalSales('2017', 20),
    ];

    final mobileSalesB = [
      new OrdinalSales('2014', 10),
      new OrdinalSales('2015', 15),
      new OrdinalSales('2016', 50),
      new OrdinalSales('2017', 45),
    ];

    final desktopSalesA = [
      new OrdinalSales('2014', 24),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    final tableSalesA = [
      new OrdinalSales('2014', 30),
      new OrdinalSales('2015', 50),
      new OrdinalSales('2016', 10),
      new OrdinalSales('2017', 20),
    ];

    final mobileSalesA = [
      new OrdinalSales('2014', 50),
      new OrdinalSales('2015', 15),
      new OrdinalSales('2016', 50),
      new OrdinalSales('2017', 45),
    ];

    return [
      new Charts.Series(id: 'Desktop A', data: desktopSalesA, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales),
      new Charts.Series(id: 'Tablet A', data: tableSalesA, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales),
      new Charts.Series(id: 'Mobile C', data: mobileSalesA, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales),
      new Charts.Series(id: 'Desktop B', data: desktopSalesB, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales),
      new Charts.Series(id: 'Tablet B', data: tableSalesB, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales),
      new Charts.Series(id: 'Mobile B', data: mobileSalesB, domainFn: (OrdinalSales sales, _) => sales.year, measureFn: (OrdinalSales sales, _) => sales.sales)
    ];
  }
}
