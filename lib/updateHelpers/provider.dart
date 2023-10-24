import 'package:flutter/material.dart';
import 'package:todoey/updateHelpers/taskBlueprint.dart';

class ListUpdaterSlave extends ChangeNotifier {
  List<Task> _myTaskList = [];

  List<Task> get myTaskList => _myTaskList;

  set myTaskList(List<Task> val){
    _myTaskList = val;
    notifyListeners();
  }

  void addTask(String taskName) {
    Task x = Task(taskName: taskName);
    _myTaskList.add(x);
    notifyListeners();
  }

  void removeTask(int i){
    _myTaskList.remove(_myTaskList[i]);
    notifyListeners();

  }

  void taskUpdater(int i) {
    _myTaskList[i].taskState = !_myTaskList[i].taskState;
    notifyListeners();
  }
}
