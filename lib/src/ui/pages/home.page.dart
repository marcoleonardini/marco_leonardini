import 'package:flutter/material.dart';

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
                width: 200.0,
                color: Colors.blueGrey,
                child: null,
              ),
              Expanded(
                child: Container(
                  constraints: BoxConstraints.expand(),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1453928582365-b6ad33cbcf64?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=lauren-mancke-aOC7TSLb1o8-unsplash.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
