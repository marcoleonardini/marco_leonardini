import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/page.provider.dart';

class MenuTile extends StatefulWidget {
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
  _MenuTileState createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  int i = 0;
  Color color = Colors.white38;
  Duration d = Duration(milliseconds: 500);

  double h = 0;
  double hEnd = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    i = Provider.of<PageProvider>(context).itemSelected;

    calculatesValues();
    return ListTile(
      onTap: () {
        h = 0;
        Provider.of<PageProvider>(context, listen: false).itemSelected =
            widget.index;
      },
      title: Text(
        widget.title,
        style: TextStyle(
          color: color,
        ),
      ),
      leading: Icon(
        widget.icon,
        color: color,
      ),
      trailing: TweenAnimationBuilder(
          tween: Tween<double>(begin: h, end: hEnd),
          duration: d,
          curve: Curves.easeIn,
          builder: (context, double c, child) {
            return Container(
              width: 2.0,
              height: c,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.deepOrange,
              ),
            );
          }),
    );
  }

  void calculatesValues() {
    if (i == widget.index) {
      color = Colors.white70;
      h = 0;
      hEnd = 150;
      d = Duration(milliseconds: 500);
      setState(() {});
    } else {
      color = Colors.white38;
      hEnd = 0;
      h = 150;
      d = Duration(milliseconds: 250);
      // setState(() {});
    }
  }
}
