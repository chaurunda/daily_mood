import 'package:daily_mood/components/chart/chart.dart';
import 'package:daily_mood/components/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  Summary({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: (MyDrawer()),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("Recapitulatif de votre humeur"),
              SimpleChart(),
            ],
          ),
        ),
      ),
    );
  }
}
