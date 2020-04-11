import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/page.provider.dart';

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
        Color color = pageProvider.itemSelected != index
            ? Colors.white38
            : Colors.white70;
        return ListTile(
          onTap: () {
            pageProvider.itemSelected = index;
          },
          title: Text(
            title,
            style: TextStyle(
              color: color,
            ),
          ),
          leading: Icon(
            icon,
            color: color,
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
