import 'package:flutter/material.dart';

class CustomTransitionWidget extends StatefulWidget {
  final Widget child;
  final Widget child2;

  CustomTransitionWidget({
    Key key,
    this.child,
    this.child2,
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
      duration: Duration(milliseconds: 1500),
    );

    _animation = Tween<Offset>(begin: Offset(-150, -150), end: Offset(0, 0))
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
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
