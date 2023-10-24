import'package:flutter/material.dart';
import'package:todoey/updateHelpers/provider.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});


  @override
  Widget build(BuildContext context) {
    final x = Provider.of<ListUpdaterSlave>(context).myTaskList;
    return ListView.builder(
      itemCount: Provider.of<ListUpdaterSlave>(context).myTaskList.length,
      itemBuilder: (BuildContext context, index) {
        return ReusableTaskTile(taskTitle: x[index].taskName, i: index,);
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
          value: Provider.of<ListUpdaterSlave>(context).myTaskList[i].taskState,
          activeColor: Colors.greenAccent,
          onChanged: (newValue) {
            Provider.of<ListUpdaterSlave>(context,listen: false).taskUpdater(i);
          }
          ),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: Provider.of<ListUpdaterSlave>(context).myTaskList[i].taskState == false
                ? TextDecoration.none
                : TextDecoration.lineThrough),
      ),
      onLongPress: (){
        Provider.of<ListUpdaterSlave>(context,listen: false).removeTask(i);
      },
    );
  }
}





