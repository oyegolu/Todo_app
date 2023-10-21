import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/provider.dart';


String? typedTaskName;
class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key,});


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
                  decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.greenAccent, width: 3.0))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 20.0),
                child: TextButton(
                  onPressed: () {
                    if (typedTaskName != null) {
                      Provider.of<ListUpdaterSlave>(context, listen: false)
                          .addTask(typedTaskName.toString());
                    } else {
                      print('bitch atleast type somethin');
                    }
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 50.0)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent)),
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
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
