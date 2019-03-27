
import 'package:charts_google/ui/Charts/Charts/BarCharts/GroupedBarChart.dart';
import 'package:charts_google/ui/Charts/Charts/BarCharts/SimpleBarChart.dart';
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
        children: <Widget>[
          itemPageView(SimpleBarChart.withSampleData(), "SimpleBarChart"),
          itemPageView(StackedBarChart.withSampleData(), "StackedBarChart"),
          itemPageView(GroupedBarChart.withSampleData(), "GroupedBarChart"),
        ],
      ),
    );
  }

  Widget itemPageView(Widget widget, title){
    setState(() {
      typeChart = title;
    });
    return new Padding(padding: new EdgeInsets.all(10),
      child: widget,
    );
  }
}

