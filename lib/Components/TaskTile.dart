import 'package:flutter/material.dart';
//This is the logic that will define the functionality of adding a task to the TaskList

class TaskTile extends StatefulWidget {
  TaskTile({this.task});

  final String task;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }
  //estbalish the logic (a function) for the checkbox to be checked or not

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${widget.task}',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          //if the checkbox is checked then strikethrough the text
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState:
            isChecked, //checkboxState is equal to the variable of isChecked
        toggleCheckbox:
            checkboxCallback, //toggle checkbox on/off = logic of void function checkboxCallback
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkboxState, this.toggleCheckbox});
  final bool checkboxState;
  final Function toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckbox,
    );
  }
}
