
import 'package:charts_google/ui/Charts/Charts/BarCharts/GroupedBarChart.dart';
import 'package:charts_google/ui/Charts/Charts/BarCharts/GroupedStackedBarChart.dart';
import 'package:charts_google/ui/Charts/Charts/BarCharts/SimpleBarChart.dart';
import 'package:charts_google/ui/Charts/Charts/BarCharts/SimpleSeriesLegend.dart';
import 'package:charts_google/ui/Charts/Charts/BarCharts/StackedBarChart.dart';
import 'package:flutter/material.dart';


class BarCharts extends StatefulWidget {
  @override
  _BarChartsState createState() => _BarChartsState();
}

class _BarChartsState extends State<BarCharts> {
  String typeChart = "SimpleBarChart";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bar Charts $typeChart"),
      ),
      body: new PageView(
        onPageChanged: (index) {
          switch(index){
            case 0:
              typeChart = "SimpleBarChart";
              break;
            case 1:
              typeChart = "StackedBarChart";
              break;
            case 2:
              typeChart = "GroupedBarChart";
              break;
            case 3:
              typeChart = "GroupedStackedBarChart";
              break;
              case 4:
              typeChart = "SimpleSeriesLegend";
              break;
          }
          setState(() {

          });
        },
        children: <Widget>[
          itemPageView(SimpleBarChart.withSampleData()),
          itemPageView(StackedBarChart.withSampleData()),
          itemPageView(GroupedBarChart.withSampleData()),
          itemPageView(GroupedStackedBarChart.withSampleData()),
          itemPageView(SimpleSeriesLegend.withSampleData()),
        ],
      ),
    );
  }

  Widget itemPageView(Widget widget){
    return new Padding(padding: new EdgeInsets.all(10),
      child: widget,
    );
  }
}

