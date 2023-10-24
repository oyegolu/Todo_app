import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/updateHelpers/provider.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ListUpdaterSlave(), child: const Todoey()));
}

class Todoey extends StatelessWidget {
  const Todoey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TasksScreen(),
    );
  }
}
