import 'package:flutter/material.dart';
import 'package:marco_leonardini/src/constants/color.const.dart';

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 2.0,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.orange,
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          TextStyleChild(
            title: title,
          )
        ],
      ),
    );
  }
}

class TextStyleChild extends StatelessWidget {
  final String title;

  const TextStyleChild({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white70,
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
