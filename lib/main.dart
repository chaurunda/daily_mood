import 'package:daily_mood/screens/home.dart';
import 'package:daily_mood/screens/summary.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Mood',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => (Home(title: 'Daily Mood')),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/summary': (context) => Summary(),
      },
    );
  }
}
