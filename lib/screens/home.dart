import 'package:daily_mood/components/drawer/drawer.dart';
import 'package:daily_mood/components/moodButton/moodButton.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(
                'Comment allez vous ?',
                style: TextStyle(fontSize: 24),
              ),
              MoodButton(),
            ],
          ),
        ),
      ),
    );
  }
}
