import 'package:flutter/material.dart';
import 'TaskTile.dart';
//This is the UI component and Logic that the task list will consist of within the white container at the bottom of the tasksview
import '../Models/Task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'task'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskString: tasks[index].name,
            isChecked: tasks[index].isDone,
            /*return a task tile where
        * taskString is retrieved from the TaskTile property, this retrieves the contents of the taskString
        *  --> retrieves the tasks from the list of tasks,
        *  --> specifically the name property from class Task in Task.dart
        * isChecked is retrieved from the TaskTile property, this retrieves whether the checkbox is checked
        *  --> retrieves the tasks from the list of tasks,
        *  --> specifically the isDone property from class Task in Task.dart*/
            checkboxCallback: (checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            }
            //estbalish the logic (an anonymous function) for the checkbox to be checked or not,
            );
      },
      itemCount: tasks.length, // display as many tasks as are in the list
    );
  }
}
