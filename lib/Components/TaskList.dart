import 'package:flutter/material.dart';
import 'TaskTile.dart';
//This is the UI component and Logic that the task list will consist of within the white container at the bottom of the tasksview
import 'package:provider/provider.dart';
import '../Models/TaskData.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskString: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            /*return a task tile where
          * taskString is retrieved from the TaskTile property, this retrieves the contents of the taskString
          *  --> retrieves the tasks from the list of tasks,
          *  --> specifically the name property from class Task in Task.dart
          * isChecked is retrieved from the TaskTile property, this retrieves whether the checkbox is checked
          *  --> retrieves the tasks from the list of tasks,
          *  --> specifically the isDone property from class Task in Task.dart*/
            checkboxCallback: (checkboxState) {
//            setState(() {
//              Provider.of<TaskData>(context).tasks[index].toggleDone();
//              //estbalish the logic (an anonymous function) for the checkbox to be checked or not
//            });
            },
          );
        },
        itemCount: taskData.taskCount,
        // display as many tasks as are in the list
      );
    });
  }
}
