import 'package:flutter/material.dart';


class ListUpdaterSlave extends ChangeNotifier{


  List<String> _myTasksList = [];

  List<String> get myTasksList=> _myTasksList;

  void addTask(String taskName) {
    _myTasksList.add(taskName);
    _myTaskState.add(false);
    notifyListeners();
  }

  List<bool> _myTaskState = [];

  List<bool> get myTaskState => _myTaskState;
  set myTaskState(List<bool> val) {
    _myTaskState = val;
    notifyListeners();
  }

  void taskUpdater(int i) {
    _myTaskState[i] = !_myTaskState[i];
    notifyListeners();
  }


}

