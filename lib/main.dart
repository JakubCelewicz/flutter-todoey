import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Tasks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Tasks>(
      builder: (context) => Tasks(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
