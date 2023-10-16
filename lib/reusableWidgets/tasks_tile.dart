import 'package:flutter/material.dart';

class ReusableTaskTile extends StatelessWidget {
  const ReusableTaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing:
      Checkbox(value: false, onChanged: (bool? value) {}),
      title: Text('this is a demo task'),
    );
  }
}