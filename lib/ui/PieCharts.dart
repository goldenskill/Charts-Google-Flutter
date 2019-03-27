import 'package:charts_google/ui/Charts/Charts/PieCharts/SimplePieChart.dart';
import 'package:flutter/material.dart';

class PieCharts extends StatefulWidget {
  @override
  _PieChartsState createState() => _PieChartsState();
}

class _PieChartsState extends State<PieCharts> {
  String typeChart = "Simple Pie";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bar Charts $typeChart"),
      ),
      body: new PageView(
        children: <Widget>[
          itemPageView(SimplePieChart.withSampleData(), "SimpleBarChart"),
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
