import'package:flutter/material.dart';
import 'package:todoey/reusableWidgets/tasks_tile.dart';


class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // provides you scrollable list of any widget with ability to automaticaly adapt to new added things (better than making column and copy paste in column add them into listView)

      children: [
        ReusableTaskTile(),
        ReusableTaskTile(),
        ReusableTaskTile(),
      ],
    );
  }
}

// scroll issue right now don't know how to fix we will do it later




