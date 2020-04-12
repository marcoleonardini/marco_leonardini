import 'package:flutter/material.dart';

import '../../../constants/color.const.dart';
import '../widgets/border_corner.painter.dart';

class AboutSubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(48.0),
          padding: EdgeInsets.all(12.0),
          color: kMainColor,
          constraints: BoxConstraints.expand(),
          child: CustomPaint(
            painter: BorderCornerPainter(),
            // child:
          ),
        ),
        Text('About Me'),
      ],
    );
  }
}
