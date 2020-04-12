import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:marco_leonardini/src/constants/color.const.dart';

import 'side_bar.page.dart';
import 'widgets/body_content.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (kIsWeb)
      return SafeArea(
        child: Scaffold(
          body: Container(
            constraints: BoxConstraints.expand(),
            child: Row(
              children: <Widget>[
                Container(
                  color: kMainColor,
                  width: 200.0,
                  child: SideBarPage(),
                ),
                Expanded(
                  child: BodyContent(),
                )
              ],
            ),
          ),
        ),
      );
    else {
      return SafeArea(
        child: Scaffold(
          drawer: Container(
            color: kMainColor,
            width: 200.0,
            child: SideBarPage(),
          ),
          body: Container(
            constraints: BoxConstraints.expand(),
            child: BodyContent(),
          ),
        ),
      );
    }
  }
}
