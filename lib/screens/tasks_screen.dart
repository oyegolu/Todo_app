import 'package:flutter/material.dart';
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
            // bottom sheet ka bhang bhosda //
            showModalBottomSheet(
                isScrollControlled: true, // change no 1
                context: context,
                builder: (context) => const MyBottomSheet());
          },
          backgroundColor: Colors.greenAccent,
          child: const Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  top: 50.0, left: 30.0, right: 20.0, bottom: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.list, color: Colors.greenAccent)),
                    SizedBox(height: 10.0),
                    Text(
                      'Todoey',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '12 Tasks',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ]),
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
