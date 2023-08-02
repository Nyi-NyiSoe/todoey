import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  const TasksTile({
    super.key,
  });

  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',
          style: isChecked
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null),
      trailing: TaskCheckBox(isChecked, (bool? checkboxState) {
        setState(() {
          isChecked = checkboxState ?? true;
        });
      }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final ValueChanged<bool?> toggleCheckBoxState;
  TaskCheckBox(this.checkboxState, this.toggleCheckBoxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: toggleCheckBoxState);
  }
}
