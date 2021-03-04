import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class moodButton extends StatefulWidget {
  @override
  _moodButtonState createState() => _moodButtonState();
}

class _moodButtonState extends State<moodButton> {
  final String extasic = "public/svg/5.svg";
  final String happy = "public/svg/4.svg";
  final String neutral = "public/svg/3.svg";
  final String sad = "public/svg/2.svg";
  final String angry = "public/svg/1.svg";
  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog(moodLevel) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('$moodLevel'),
                  Text('This is a demo alert dialog.'),
                  Text('Would you like to approve of this message?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Column(
      children: [
        Row(
          children: [
            OutlinedButton(
              child: SvgPicture.asset(extasic, width: 48, height: 48),
              onPressed: () => _showMyDialog(5),
            ),
            OutlinedButton(
              child: SvgPicture.asset(happy, width: 48, height: 48),
              onPressed: () => _showMyDialog(4),
            ),
            OutlinedButton(
              child: SvgPicture.asset(neutral, width: 48, height: 48),
              onPressed: () => _showMyDialog(3),
            ),
            OutlinedButton(
              child: SvgPicture.asset(sad, width: 48, height: 48),
              onPressed: () => _showMyDialog(2),
            ),
            OutlinedButton(
              child: SvgPicture.asset(angry, width: 48, height: 48),
              onPressed: () => _showMyDialog(1),
            ),
          ],
        ),
      ],
    );
  }
}
