import'package:flutter/material.dart';
import'package:todoey/provider.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});


  @override
  Widget build(BuildContext context) {
    final x = Provider.of<ListUpdaterSlave>(context).myTasksList;
    return ListView.builder(
      itemCount: Provider.of<ListUpdaterSlave>(context).myTasksList.length,
      itemBuilder: (BuildContext context, index) {
        return ReusableTaskTile(taskTitle: x[index], i: index,);
      },
    );
  }
}

class ReusableTaskTile extends StatelessWidget {
  final String taskTitle;
  final int i;
  const ReusableTaskTile({super.key,required this.taskTitle, required this.i});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
          value: Provider.of<ListUpdaterSlave>(context).myTaskState[i],
          activeColor: Colors.greenAccent,
          onChanged: (newValue) {

            Provider.of<ListUpdaterSlave>(context,listen: false).taskUpdater(i);

          }),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: Provider.of<ListUpdaterSlave>(context).myTaskState[i] == false
                ? TextDecoration.none
                : TextDecoration.lineThrough),
      ),
    );
  }
}





