import 'package:flutter/material.dart';
import 'package:todoey/screens/addtasks_screen.dart';

List myTasksList = [];

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
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
                    '${myTasksList.length} Tasks',
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
                child: ListView.builder(
                  // provides you scrollable list of any widget with ability to automaticaly adapt to new added things (better than making column and copy paste in column add them into listView)
                  itemCount: myTasksList.length,
                  itemBuilder: (BuildContext context, index) {
                    return myTasksList[index];
                  },
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('ganja maro'))
          ],
        ));
  }
}
