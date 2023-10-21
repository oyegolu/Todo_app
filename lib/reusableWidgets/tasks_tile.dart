import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider.dart';

class ReusableTaskTile extends StatelessWidget {
  final String taskTitle;
  const ReusableTaskTile({super.key,required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
          value: Provider.of<ListUpdaterSlave>(context).isChecked,
          activeColor: Colors.greenAccent,
          onChanged: (newValue) {
            Provider.of<ListUpdaterSlave>(context,listen: false).isChecked = newValue??false;

          }),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: Provider.of<ListUpdaterSlave>(context,listen: false).isChecked == false
                ? TextDecoration.none
                : TextDecoration.lineThrough),
      ),
    );
  }
}
