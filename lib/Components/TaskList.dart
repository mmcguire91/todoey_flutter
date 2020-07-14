import 'package:flutter/material.dart';
import 'TaskTile.dart';
//This is the UI component and Logic that the task list will consist of within the white container at the bottom of the tasksview

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
      ],
    );
  }
}
