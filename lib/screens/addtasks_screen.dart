import 'package:flutter/material.dart';
import 'package:todoey/reusableWidgets/tasks_list.dart';
import 'package:todoey/reusableWidgets/tasks_tile.dart';

late String typedTaskName;
class MyBottomSheet extends StatefulWidget {

  const MyBottomSheet({
    super.key
  });

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  onChanged: (enteredText) => typedTaskName = enteredText,
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
                  onPressed: () {
                      myTasksList.add(ReusableTaskTile(taskName: typedTaskName));
                    print(typedTaskName);
                    Navigator.pop(context);
                  },
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
    );
  }
}