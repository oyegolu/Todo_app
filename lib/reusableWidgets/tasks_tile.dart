import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider.dart';

class ReusableTaskTile extends StatelessWidget {
  final String taskTitle;
  const ReusableTaskTile({super.key,required this.taskTitle});


  @override
  Widget build(BuildContext context) {
    bool y;
    bool checkStatus = false;
    bool checkBoxUpdater() {
      y = checkStatus;
      if(checkStatus == false)
        return false;
      else{
        return true;
      }
      }


    return ListTile(
      trailing: Checkbox(
          value:   ? Provider.of<ListUpdaterSlave>(context).isChecked: Provider.of<ListUpdaterSlave>(context).isUnchecked ,
          activeColor: Colors.greenAccent,
          onChanged: (newValue) {
          checkStatus = newValue??false;
          }),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: listUpdaterSlave.isChecked == false
                ? TextDecoration.none
                : TextDecoration.lineThrough),
      ),
    );
  }
}
