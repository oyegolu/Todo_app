import'package:flutter/material.dart';
import'package:todoey/provider.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // provides you scrollable list of any widget with ability to automaticaly adapt to new added things (better than making column and copy paste in column add them into listView)
      itemCount: Provider.of<ListUpdaterSlave>(context).myTaskList.length,
      itemBuilder: (BuildContext context, index) {
        return Provider.of<ListUpdaterSlave>(context).myTaskList[index];
      },

    );
  }
}

// scroll issue right now don't know how to fix we will do it later




