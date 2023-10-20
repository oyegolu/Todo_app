import'package:flutter/material.dart';


List myTasksList = [];


class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // provides you scrollable list of any widget with ability to automaticaly adapt to new added things (better than making column and copy paste in column add them into listView)
      itemCount: myTasksList.length,
      itemBuilder: (BuildContext context, index) {
        return myTasksList[index];
      },

    );
  }
}

// scroll issue right now don't know how to fix we will do it later




