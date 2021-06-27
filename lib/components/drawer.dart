import 'package:flutter/material.dart';

class GlobalDrawer extends StatefulWidget {
  const GlobalDrawer({Key? key}) : super(key: key);

  @override
  _GlobalDrawerState createState() => _GlobalDrawerState();
}

class _GlobalDrawerState extends State<GlobalDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal.shade400,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                new IconButton(
                  onPressed: () => {Navigator.pop(context)},
                  icon: new Icon(
                    Icons.arrow_back,
                    semanticLabel: 'Retour',
                  ),
                  color: Colors.white,
                  alignment: Alignment(-1, -1),
                ),
                Text(
                  'Retour',
                  style: TextStyle(
                    height: 2.15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Resume'),
            onTap: () {
              Navigator.pushNamed(context, '/summary');
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              print('Item 2');
            },
          ),
        ],
      ),
    );
  }
}
