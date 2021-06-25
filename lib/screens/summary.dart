import 'package:daily_mood/components/chart/chart.dart';
import 'package:daily_mood/components/chart/chartAction.dart';
import 'package:daily_mood/components/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  Summary({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  Future<List<dynamic>> _post;

  @override
  void initState() {
    super.initState();

    _post = getMoods();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: (MyDrawer()),
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: _post,
            builder: (
              BuildContext context,
              AsyncSnapshot<List> snapshot,
            ) =>
                ListView.builder(
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, int index) {
                return Row(
                  children: [
                    Text(snapshot.toString()),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     drawer: (MyDrawer()),
  //     body: Center(
  //       child: Container(
  //         child: Column(
  //           children: [
  //             Text("Recapitulatif de votre humeur"),
  //             SimpleChart(),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
