import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
  final Function handleAddTask;
  AddTaskScreen(this.handleAddTask);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
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
//              Text(
//                'Add Task',
//                textAlign: TextAlign.center,
//                style: TextStyle(
//                  fontSize: 22.0,
//                  color: Colors.blue,
//                ),
//              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                  print(newText);
                },
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  handleAddTask(newTaskTitle);
                },
              )
            ],
          )),
    );
  }
}
