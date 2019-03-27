import 'package:charts_google/Models/LinearSales.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as Charts;
class PieOutsideLabelChart  extends StatelessWidget {

  PieOutsideLabelChart();

  factory PieOutsideLabelChart.withSampleData() {
    return PieOutsideLabelChart();
  }


  @override
  Widget build(BuildContext context) {
    return new Charts.PieChart(
      _getData(),
      animate: true,
      defaultRenderer: new Charts.ArcRendererConfig(
        arcRendererDecorators: [
          new Charts.ArcLabelDecorator(
            labelPosition: Charts.ArcLabelPosition.inside
          )
        ]
      )
    );
  }

  _getData(){
    final data = [
      new LinearSales(0, 25),
      new LinearSales(1, 25),
      new LinearSales(2, 25),
      new LinearSales(3, 25),
    ];

    return [
      new Charts.Series(id: "ChartPie", data: data, domainFn: (LinearSales sales, _) => sales.year, measureFn: (LinearSales sales, _) => sales.sales, labelAccessorFn: (LinearSales row, _) => '${row.year}: ${row.sales}')
    ];
  }

}
