import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  final _myBox = Hive.box('myBox');

  void createInitialData() {
    todoList = [
      ['List all your doings!', false],
      ['With ease! and easy click!', false],
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}
