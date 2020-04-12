import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(
        size: 128.0,
      ),
    );
  }
}

class Item2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(
        size: 128.0,
        colors: Colors.red,
      ),
    );
  }
}

class Item3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(
        size: 128.0,
        colors: Colors.green,
      ),
    );
  }
}

class Item4Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(
        size: 128.0,
        colors: Colors.purple,
      ),
    );
  }
}

class Item5Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(
        size: 128.0,
        colors: Colors.deepOrange,
      ),
    );
  }
}
