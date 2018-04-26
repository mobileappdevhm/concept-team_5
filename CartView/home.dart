import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/order.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Home Page'),),
      body: new Center(
        child: new Container(
        padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                  child: new Text('Go'),
                  onPressed: (){Navigator.of(context).pushNamed('/Order');}
              )
            ],
        ),
        ),
      )
    );
  }
}