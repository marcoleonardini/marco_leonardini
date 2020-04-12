import 'package:flutter/material.dart';

import 'side_bar.page.dart';
import 'widgets/body_content.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Row(
            children: <Widget>[
              Container(
                color: Color(0xff222222),
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
  }
}
