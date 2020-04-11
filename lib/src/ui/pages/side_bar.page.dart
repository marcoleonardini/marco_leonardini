import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/menu_tile.widget.dart';

class SideBarPage extends StatefulWidget {
  @override
  _SideBarPageState createState() => _SideBarPageState();
}

class _SideBarPageState extends State<SideBarPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          child: FlutterLogo(
            size: 48.0,
          ),
          radius: 50,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Marco \nLeonardini',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(
          height: 20.0,
        ),
        Divider(),
        MenuTile(
          index: 0,
          title: 'Home',
          icon: Icons.home,
        ),
        Divider(),
        MenuTile(
          index: 1,
          title: 'About Me',
          icon: CupertinoIcons.profile_circled,
        ),
        Divider(),
        MenuTile(
          index: 2,
          title: 'Resume',
          icon: CupertinoIcons.book_solid,
        ),
        Divider(),
        MenuTile(
          index: 3,
          icon: CupertinoIcons.mail_solid,
          title: 'Contact Me',
        ),
        Divider(),
        MenuTile(
          index: 4,
          title: 'Contact',
          icon: CupertinoIcons.mail_solid,
        ),
      ],
    );
  }
}
