import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';


class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: Color(0XFF757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle.toString());
                Navigator.pop(context);
              },
              child: Text('Add', style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
