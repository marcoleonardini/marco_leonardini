import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/menu_tile.widget.dart';

class SideBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
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
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Leo v0.0.1',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white54, fontSize: 8.0),
        )
      ],
    );
  }
}
