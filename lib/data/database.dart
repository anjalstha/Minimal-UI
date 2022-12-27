import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //refrence our box
  final _myBox = Hive.box('mybox');

//first time app opens
  void createInitialDate() {
    toDoList = [
      ["Eat", false],
      ["Exercises", false],
    ];
  }

  //load data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
