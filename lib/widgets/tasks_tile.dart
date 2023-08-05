import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged  checkboxCallback;
  final VoidCallback longPressCallback;

  TasksTile({required this.longPressCallback,required this.isChecked,required this.taskTitle,required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
          style: isChecked
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null),
      trailing:Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback
        ),
    );
  }
}

