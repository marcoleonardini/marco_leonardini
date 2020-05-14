import 'package:flutter/material.dart';
import 'package:marco_leonardini/src/ui/pages/subpages/resume.subpage.dart';
import 'package:provider/provider.dart';

import '../../../providers/page.provider.dart';
import '../subpages/about.subpage.dart';
import '../subpages/home.subpage.dart';
import 'custom_transition.widget.dart';
import 'item.widget.dart';

class BodyContent extends StatelessWidget {
  BodyContent({
    Key key,
  }) : super(key: key);

  Widget initialChild = ItemWidget();
  Widget disapearingChild = Container();
  AxisDirection axisDirection = AxisDirection.down;
  Offset _initialOffset = Offset(0.0, 0.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1453928582365-b6ad33cbcf64?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=lauren-mancke-aOC7TSLb1o8-unsplash.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      constraints: BoxConstraints.expand(),
      child: Consumer(
        builder: (context, PageProvider pageProvider, child) {
          return CustomTransitionWidget(
            key: GlobalKey(),
            child: getIncoming(context, pageProvider.itemSelected),
            child2: disapearingChild,
            axisDirection: axisDirection,
            initialOffset: _initialOffset,
          );
        },
      ),
    );
  }

  Widget getIncoming(BuildContext context, int index) {
    disapearingChild = initialChild;
    switch (index) {
      case 0:
        initialChild = HomeSubPage();
        _initialOffset = Offset(0.0, -MediaQuery.of(context).size.height);
        break;
      case 1:
        initialChild = AboutSubPage();
        axisDirection = AxisDirection.right;
        _initialOffset = Offset(MediaQuery.of(context).size.width, 0.0);
        break;
      case 2:
        initialChild = ResumeSubPage();
        axisDirection = AxisDirection.down;
        _initialOffset = Offset(0.0, MediaQuery.of(context).size.height);

        break;
      case 3:
        initialChild = Item4Widget();
        axisDirection = AxisDirection.up;
        _initialOffset = Offset(0.0, -MediaQuery.of(context).size.height);
        break;
      case 4:
        initialChild = Item5Widget();
        axisDirection = AxisDirection.right;
        _initialOffset = Offset(MediaQuery.of(context).size.width, 0.0);
        break;
    }
    return initialChild;
  }
}
