import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
                isChecked: task.isDone,
                taskTitle:task.name,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                
                },
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
                );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
