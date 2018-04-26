import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/review.dart';
import 'package:flutter_app/code/courseselect.dart/';

class Order extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<Order>{
  courseselect CourseOrder = new courseselect();

  void setSize(String value){
    setState((){
      CourseOrder.time = value;
    });
  }

  void setCourseList(int index,bool value)
  {
    setState((){
      String key = CourseOrder.CourseList.keys.elementAt(index);
      CourseOrder.CourseList[key] = value;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
    appBar: new AppBar(title: new Text('Course Order'),),
      body: new Center(
        child: new Container(
        padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
new DropdownButton<String>(
    value: CourseOrder.time,
    items: courseselect.times.map((String value){
      return new DropdownMenuItem(
          value: value,
          child: new Row(
            children: <Widget>[
              new Text('Time： ${value}')
            ]
          ),
      );
    }).toList(),
    onChanged: (String value){setSize(value);}
    ),
              new Expanded(
                child: new ListView.builder(
                  shrinkWrap:true,
                  itemCount: CourseOrder.CourseList.length,
                  itemBuilder: (BuildContext context,int index){
                    return new CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: new Text (CourseOrder.CourseList.keys.elementAt(index)),
                        value: CourseOrder.CourseList.values.elementAt(index),
                        onChanged: (bool value){setCourseList(index, value);});
                  }
                )
              ),
              new RaisedButton(
                child: new Text('Coutinue'),
                onPressed: (){Navigator.push(context,new MaterialPageRoute(
                    builder:(BuildContext context) => new Review(order: CourseOrder,)
                    ));}
                    )
            ],
        ),
        ),
        ),
      );
  }
}