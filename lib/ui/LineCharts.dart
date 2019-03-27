import 'package:charts_google/ui/Charts/Charts/LineCharts/SimpleLineChart.dart';
import 'package:flutter/material.dart';


class LineCharts extends StatefulWidget {
  @override
  _LineChartsState createState() => _LineChartsState();
}

class _LineChartsState extends State<LineCharts> {
  String typeChart = "Simple Line";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bar Charts $typeChart"),
      ),
      body: new PageView(
        children: <Widget>[
          itemPageView(SimpleLineChart.withSampleData(), "SimpleBarChart"),
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
