import 'package:flutter/material.dart';
import 'package:marco_leonardini/src/constants/color.const.dart';
import 'package:marco_leonardini/src/ui/pages/widgets/text_title.widget.dart';

class FunFactsIcons extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool even;

  const FunFactsIcons({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.subtitle,
    this.even = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: even ? Colors.transparent : Colors.white10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white54,
              size: 48.0,
            ),
            SizedBox(
              height: 12.0,
            ),
            TextStyleChild(title: title),
            SizedBox(
              height: 12.0,
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: AppColors.orange,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
