import 'package:flutter/material.dart';
import 'buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.deepOrange,
      ),
      home: MaterialBtn(),
    );
  }
}
