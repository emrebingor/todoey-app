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
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                //setState(() {
                //widget.tasks[index].toggleDone();
                //});
              },
            );
          },
          itemCount: taskData.taskCount);
      },
    );
  }
}
