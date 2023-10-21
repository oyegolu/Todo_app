import 'package:flutter/material.dart';

class ReusableTaskTile extends StatelessWidget {
  final String taskTitle;
  const ReusableTaskTile({super.key,required this.taskTitle});

  // now thats look like clean code //
  final bool? valueOfCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
          value: valueOfCheckbox,
          activeColor: Colors.greenAccent,
          onChanged: (newValue) {

              // valueOfCheckbox = newValue;

          }),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: valueOfCheckbox == false
                ? TextDecoration.none
                : TextDecoration.lineThrough),
      ),
    );
  }
}
