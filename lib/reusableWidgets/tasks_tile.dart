import 'package:flutter/material.dart';

class ReusableTaskTile extends StatefulWidget {
  final String taskName;
  const ReusableTaskTile({super.key,required this.taskName});

  @override
  State<ReusableTaskTile> createState() => _ReusableTaskTileState();
}

class _ReusableTaskTileState extends State<ReusableTaskTile> {
  // now thats look like clean code //
  bool? valueOfCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
          value: valueOfCheckbox,
          activeColor: Colors.greenAccent,
          onChanged: (newValue) {
            setState(() {
              valueOfCheckbox = newValue;
            });
          }),
      title: Text(
        widget.taskName,
        style: TextStyle(
            decoration: valueOfCheckbox == false
                ? TextDecoration.none
                : TextDecoration.lineThrough),
      ),
    );
  }
}
