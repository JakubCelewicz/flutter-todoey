import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Split a milk'),
    Task(name: 'Smash eggs'),
    Task(name: 'Melt butter'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
  }
}
