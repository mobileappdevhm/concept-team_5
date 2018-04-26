import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/home.dart/';
import 'package:flutter_app/Screens/order.dart';
import 'package:flutter_app/Screens/review.dart/';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    title: 'Navigation',
      routes: <String,WidgetBuilder>{
        '/Home':(BuildContext context) => new Home(),
        '/Order':(BuildContext context) => new Order(),
        '/Review':(BuildContext context) => new Review(),
      },
      home: new Home(),
    );
  }
}
