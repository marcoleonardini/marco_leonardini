import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marco_leonardini/src/providers/page.provider.dart';
import 'package:provider/provider.dart';

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

class MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;

  const MenuTile({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageProvider>(
      builder: (context, pageProvider, child) {
        return ListTile(
          onTap: () {
            pageProvider.itemSelected = index;
          },
          title: Text(
            title,
            style: TextStyle(color: Colors.white54),
          ),
          leading: Icon(
            icon,
            color: Colors.white54,
          ),
          trailing: pageProvider.itemSelected != index
              ? null
              : Container(
                  width: 2.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.deepOrange,
                  ),
                ),
        );
      },
    );
  }
}
