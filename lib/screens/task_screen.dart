import 'package:flutter/material.dart';
// import 'package:todoey_flutter/TodoManager.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  // 1
  //  Widget buildBottomSheet(BuildContext context) {
  ////    return Container(
  ////      child: Center(child: Text('this is bottom text')),
  ////    );
  ////  }

  // 2
  //  Widget buildBottomSheet(BuildContext context) => Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('add todo');
          // 1 and 2
          // showModalBottomSheet(context: context, builder: buildBottomSheet);
          // shortest way of 1 and 2
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                EdgeInsets.only(top: 60, left: 30.0, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list,
                      size: 30.0, color: Colors.lightBlueAccent),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    )),
                Text('12 Tasks', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: new TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
