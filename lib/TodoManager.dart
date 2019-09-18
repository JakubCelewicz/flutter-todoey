import 'Todo.dart';

class TodoManager {
  int _todoNumber = 0;
  bool _todoFinished = false;

  List<Todo> _todoList = [
    Todo('buy milk', true),
    Todo('vacum the car', false),
    Todo('Sell stuf on allegro', false),
  ];

  List getAllTodo() {
    return _todoList;
  }
}
