import 'package:flutter/material.dart';
import 'package:marco_leonardini/src/constants/string.const.dart';

import '../../../constants/color.const.dart';
import '../widgets/border_corner.painter.dart';

class AboutSubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(32.0),
          padding: EdgeInsets.all(12.0),
          color: kMainColor.withOpacity(0.975),
          constraints: BoxConstraints.expand(),
          child: CustomPaint(
            painter: BorderCornerPainter(),
          ),
        ),
        Container(
          margin: EdgeInsets.all(32.0),
          padding: EdgeInsets.all(24.0),
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'About Me',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 48.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      'https://avatars0.githubusercontent.com/u/2449572?s=460&u=014de7adb1211fa234ae0ae47f58ff367d499758&v=4',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        kPersonalDesc,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
