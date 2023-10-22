import 'package:flutter/material.dart';
import 'package:todoey/reusableWidgets/tasks_tile.dart';

class ListUpdaterSlave extends ChangeNotifier{

  final List<ReusableTaskTile> _myTasksList = [];


  List<ReusableTaskTile> get myTaskList=> _myTasksList;
  void addTask(String taskName) {
    ReusableTaskTile x = ReusableTaskTile(taskTitle: taskName) ;
    _myTasksList.add(x);
    notifyListeners();
  }


  final bool _isChecked = true;
  bool get isChecked=> _isChecked;

  final bool _isUnchecked = false;
  bool get isUnchecked => _isUnchecked;




}