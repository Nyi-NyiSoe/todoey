import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
          ),
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          TextButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent)),onPressed: () {}, child: Text('Add',style: TextStyle(color: Colors.white),),)
        ]),
      ),
    );
  }
}
