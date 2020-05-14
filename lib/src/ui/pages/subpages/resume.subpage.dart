import 'package:flutter/material.dart';
import 'package:marco_leonardini/src/constants/color.const.dart';
import 'package:marco_leonardini/src/ui/pages/widgets/border_corner.painter.dart';

class ResumeSubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(32.0),
          padding: EdgeInsets.all(12.0),
          color: AppColors.mainColor.withOpacity(0.975),
          constraints: BoxConstraints.expand(),
          child: CustomPaint(
            painter: BorderCornerPainter(),
          ),
        ),
        Container(
          margin: EdgeInsets.all(32.0),
          padding: EdgeInsets.all(24.0),
          constraints: BoxConstraints.expand(),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ],
    );
  }
}
