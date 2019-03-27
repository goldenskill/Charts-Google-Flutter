import 'package:charts_google/ui/BarCharts.dart';
import 'package:charts_google/ui/PieCharts.dart';
import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("Charts"),
        ),
        body: new Container(
          padding: new EdgeInsets.only(left: 10.0, right: 10.0),
          child: new Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Center(
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => BarCharts()));
                  },
                  child: new Text("Bar Charts"),
                ),
              ),
              new Center(
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => PieCharts()));
                  },
                  child: new Text("Pie Charts"),
                ),
              ),
              new Center(
                child: new RaisedButton(
                  onPressed: () {},
                  child: new Text("Item"),
                ),
              ),
              new Center(
                child: new RaisedButton(
                  onPressed: () {},
                  child: new Text("Item"),
                ),
              ),
              new Center(
                child: new RaisedButton(
                  onPressed: () {},
                  child: new Text("Item"),
                ),
              ),
              new SizedBox(
                height: 50.0,
              )
            ],
          ),
        ));
  }
}
