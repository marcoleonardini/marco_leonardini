import 'package:flutter/material.dart';
import 'package:marco_leonardini/src/providers/page.provider.dart';
import 'package:provider/provider.dart';

import 'src/ui/pages/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PageProvider(),
      child: MaterialApp(
        title: 'Marco Leonardini',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
