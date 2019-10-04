import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.blue,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              FlatButton(
                onPressed: () {
                  print('add task');
                },
                color: Colors.lightBlueAccent,
                child: Text('Add',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
              )
            ],
          )),
    );
  }
}
