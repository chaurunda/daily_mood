import 'package:daily_mood/components/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String extasic = "public/svg/5.svg";
  final String happy = "public/svg/4.svg";
  final String neutral = "public/svg/3.svg";
  final String sad = "public/svg/2.svg";
  final String angry = "public/svg/1.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: MyDrawer(),
      body: Center(
          child: Column(
        children: [
          Text('Salut les zouzous'),
          SvgPicture.asset(extasic, width: 48, height: 48),
          SvgPicture.asset(happy, width: 48, height: 48),
          SvgPicture.asset(neutral, width: 48, height: 48),
          SvgPicture.asset(sad, width: 48, height: 48),
          SvgPicture.asset(angry, width: 48, height: 48),
        ],
      )),
    );
  }
}
