import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() deletedTask;

  const TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.deletedTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deletedTask,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.deepPurple,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
