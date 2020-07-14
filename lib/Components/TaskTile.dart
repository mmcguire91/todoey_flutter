import 'package:flutter/material.dart';
//This is the logic that will define the functionality of adding a task to the TaskList

class TaskTile extends StatelessWidget {
  TaskTile({this.task});

  final String task;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$task'),
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
    );
  }
}
