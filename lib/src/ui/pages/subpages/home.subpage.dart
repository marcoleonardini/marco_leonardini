import 'package:flutter/material.dart';

import '../../../constants/color.const.dart';

class HomeSubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(48.0),
      decoration: BoxDecoration(
        color: AppColors.mainColor.withOpacity(0.75),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Marco Leonardini',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 40.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Mobile App Developer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
