import 'package:flutter/material.dart';

class HomeSubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Color(0xff222222).withOpacity(0.75),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Marco Leonardini',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 36.0,
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
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
