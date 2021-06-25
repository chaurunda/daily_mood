import 'package:daily_mood/actions/moods/moodActions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoodButton extends StatefulWidget {
  @override
  _MoodButtonState createState() => _MoodButtonState();
}

class _MoodButtonState extends State<MoodButton> {
  final String extasic = "public/svg/5.svg";
  final String happy = "public/svg/4.svg";
  final String neutral = "public/svg/3.svg";
  final String sad = "public/svg/2.svg";
  final String angry = "public/svg/1.svg";
  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog(int moodLevel) async {
      var action = MoodActions();
      var response = await action.add(moodLevel);
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
                  Text('$response'),
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

    Column _buildMoodButton(SvgPicture picture, int value) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: picture,
            onPressed: () {
              _showMyDialog(value);
            },
          ),
        ],
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildMoodButton(
            SvgPicture.asset(
              angry,
              width: 48,
              height: 48,
            ),
            1,
          ),
          _buildMoodButton(
            SvgPicture.asset(
              sad,
              width: 48,
              height: 48,
            ),
            2,
          ),
          _buildMoodButton(
            SvgPicture.asset(
              neutral,
              width: 48,
              height: 48,
            ),
            3,
          ),
          _buildMoodButton(
            SvgPicture.asset(
              happy,
              width: 48,
              height: 48,
            ),
            4,
          ),
          _buildMoodButton(
            SvgPicture.asset(
              extasic,
              width: 48,
              height: 48,
            ),
            5,
          ),
        ],
      ),
    );
  }
}
