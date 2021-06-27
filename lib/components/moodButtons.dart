import 'package:daily_mood/actions/moodActions.dart';
import 'package:flutter/material.dart';

class MoobButtons extends StatelessWidget {
  const MoobButtons({Key? key}) : super(key: key);

  Future<void> _handleButtonClick(int moodLevel, BuildContext context) async {
    var moodActions = new MoodActions();

    moodActions.add(moodLevel);
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Humeur ajoutee'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('$moodLevel !'),
                  Text('Merci !'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Valider'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => {_handleButtonClick(1, context)},
          icon: const Icon(Icons.sentiment_dissatisfied),
          color: Colors.red.shade900,
        ),
        IconButton(
          onPressed: () => {_handleButtonClick(2, context)},
          icon: const Icon(Icons.sentiment_neutral),
          color: Colors.orange.shade800,
        ),
        IconButton(
          onPressed: () => {_handleButtonClick(3, context)},
          icon: const Icon(Icons.sentiment_satisfied_sharp),
          color: Colors.yellow.shade600,
        ),
        IconButton(
          onPressed: () => {_handleButtonClick(4, context)},
          icon: const Icon(Icons.sentiment_very_satisfied),
          color: Colors.green,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
