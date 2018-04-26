import 'package:flutter/material.dart';
import 'package:flutter_app/code/courseselect.dart';

class Review extends StatelessWidget{
  courseselect CourseOrder;
  List<String> _list = new List<String>();

  Review({order: null}){
    CourseOrder = order;

    _list.add("Size: ${CourseOrder.time}");
    _list.add(" ");
    _list.add("CourseList:");

    CourseOrder.CourseList.forEach((String name,bool value){
      if(value) _list.add(name);
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Review Course Order'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
          child: new Column(
              children:<Widget>[
                new Text('Review your CourseOrder', style: new TextStyle(fontWeight:FontWeight.bold),),
        new Expanded(
            child: new ListView.builder(
                shrinkWrap: true,
                itemCount: _list.length,
                itemBuilder: (BuildContext context,int index){
                  return new Text(_list.elementAt(index));
                }
            )
        ),
              ],
          ),

      ),
    );
  }

}