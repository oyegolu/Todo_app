import 'package:flutter/material.dart';
import 'package:todoey/updateHelpers/provider.dart';
import'package:provider/provider.dart';
import 'package:todoey/reusableWidgets/tasks_list.dart';
import 'package:todoey/screens/addtasks_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => const MyBottomSheet());
          },
          backgroundColor: Colors.greenAccent,
          child: const Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, left: 30.0, right: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.list, color: Colors.greenAccent)),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    '${Provider.of<ListUpdaterSlave>(context).myTaskList.length} Tasks',
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.0))),
                child: const TasksList(),
              ),
            )
          ],
        ));
  }
}
