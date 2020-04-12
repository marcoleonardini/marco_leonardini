import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/color.const.dart';
import '../../../providers/page.provider.dart';

class MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;

  MenuTile({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.index,
  }) : super(key: key);

  int _i = 0;
  Color _color = Colors.white38;
  Color back = kMainColor;
  Duration _duration = Duration(milliseconds: 500);

  double _heightStart = 0;
  double _heightEnd = 0;

  @override
  Widget build(BuildContext context) {
    _i = Provider.of<PageProvider>(context).itemSelected;

    calculatesValues();
    return Container(
      color: back,
      child: ListTile(
        onTap: () {
          Provider.of<PageProvider>(context, listen: false).itemSelected =
              index;
        },
        title: Text(
          title,
          style: TextStyle(
            color: _color,
          ),
        ),
        leading: Icon(
          icon,
          color: _color,
        ),
        trailing: TweenAnimationBuilder(
            tween: Tween<double>(begin: _heightStart, end: _heightEnd),
            duration: _duration,
            curve: Curves.easeIn,
            builder: (context, double heightValue, child) {
              return Container(
                width: 2.0,
                height: heightValue,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.deepOrange,
                ),
              );
            }),
      ),
    );
  }

  void calculatesValues() {
    _color = Colors.white38;
    _heightEnd = 0;
    _heightStart = 150;
    back = kMainColor;
    _duration = Duration(milliseconds: 300);
    if (_i == index) {
      _color = Colors.white70;
      _heightStart = 0;
      _heightEnd = 150;
      _duration = Duration(milliseconds: 500);
      back = kSelectedItem.withOpacity(0.8);
    }
  }
}
