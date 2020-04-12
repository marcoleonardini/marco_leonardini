import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/page.provider.dart';
import 'custom_transition.widget.dart';
import 'item.widget.dart';

class BodyContent extends StatelessWidget {
  BodyContent({
    Key key,
  }) : super(key: key);

  Widget initialChild = ItemWidget();
  Widget out = Container();

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
            child2: out,
          );
        },
      ),
    );
  }

  Widget getIncoming(BuildContext context, int index) {
    out = initialChild;
    switch (index) {
      case 0:
        initialChild = ItemWidget();
        break;
      case 1:
        initialChild = Item2Widget();
        break;
      case 2:
        initialChild = Item3Widget();
        break;
      case 3:
        initialChild = Item4Widget();
        break;
      case 4:
        initialChild = Item5Widget();
        break;
    }
    return initialChild;
  }
}
