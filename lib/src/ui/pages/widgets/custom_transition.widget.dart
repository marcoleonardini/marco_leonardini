import 'package:flutter/material.dart';

class CustomTransitionWidget extends StatefulWidget {
  final Widget child;
  final Widget child2;
  final AxisDirection axisDirection;
  final Offset initialOffset;
  CustomTransitionWidget({
    Key key,
    this.child,
    this.child2,
    this.initialOffset,
    this.axisDirection = AxisDirection.up,
  }) : super(key: key);
  @override
  _CustomTransitionWidgetState createState() => _CustomTransitionWidgetState();
}

class _CustomTransitionWidgetState extends State<CustomTransitionWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  Animation _animation;
  Animation _animation2;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<Offset>(begin: widget.initialOffset, end: Offset(0, 0))
        .animate(_animationController);

    _animation2 =
        Tween<double>(begin: 1.0, end: 0.0).animate(_animationController);

    _animation.addListener(() {
      setState(() {});
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Transform.translate(
          offset: _animation.value,
          child: widget.child,
        ),
        Opacity(
          opacity: _animation2.value,
          child: widget.child2,
        ),
      ],
    );
  }
}
