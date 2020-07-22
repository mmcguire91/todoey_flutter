import 'package:flutter/material.dart';
//This is the logic that will define the functionality of adding a task to the TaskList

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.isChecked,
      this.taskString,
      this.checkboxCallback,
      this.longPressCallback});
  final bool isChecked;
  final String taskString;
  final Function checkboxCallback;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        '$taskString',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          //if the checkbox is checked then strikethrough the text
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
        //toggle checkbox on/off = logic of void function checkboxCallback
      ),
    );
  }
}

//class TaskCheckbox extends StatelessWidget {
//  TaskCheckbox({this.checkboxState, this.toggleCheckbox});
//  final bool checkboxState;
//  final Function toggleCheckbox;
//
//  @override
//  Widget build(BuildContext context) {
//  }
//}
