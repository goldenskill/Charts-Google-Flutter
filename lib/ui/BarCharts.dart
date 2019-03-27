import 'package:flutter/material.dart';


class BarCharts extends StatefulWidget {
  @override
  _BarChartsState createState() => _BarChartsState();
}

class _BarChartsState extends State<BarCharts> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bar Charts"),
      ),
      body: new SingleChildScrollView(
        child: new Center(
          child: Column(
            children: <Widget>[],
          ),
        ),
      )
    );
  }


}
