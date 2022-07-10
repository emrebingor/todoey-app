import 'package:flutter/material.dart';
import 'package:todolist_flutter/models/task_data.dart';
import 'package:todolist_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              deletedTask: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount);
      },
    );
  }
}