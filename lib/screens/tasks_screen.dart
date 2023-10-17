import 'package:flutter/material.dart';
import 'package:todoey/reusableWidgets/tasks_list.dart';

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
              builder: (context) => Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff757575),
                  ),
                  color: const Color(0xff757575),
                ),
                child: SingleChildScrollView(
                  // make change as per the chrome file change no 2
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Add Task',
                            style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: TextField(
                            autofocus: true,
                            textAlign: TextAlign.center,
                            cursorColor: Colors.greenAccent,
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.greenAccent,
                                        width: 3.0))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 20.0),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    const Size(double.infinity, 50.0)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.greenAccent)),
                            child: const Text(
                              'Add',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
            // this bahng bhosda ends here
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.greenAccent,
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
                      child: Icon(
                        Icons.list,
                        color: Colors.greenAccent,
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
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
