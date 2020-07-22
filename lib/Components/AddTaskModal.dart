import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/TaskData.dart';

class AddTaskModal extends StatelessWidget {
  AddTaskModal(this.addTaskCallback);

  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      color: Color(0xff757575),
      child: Container(
        //necessary to achieve curved edges of the modal
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(hoverColor: Colors.lightBlueAccent),
              style: TextStyle(
                fontSize: 25.0,
              ),
              onChanged: (value) {
                newTask = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTask);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add Task',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                padding: EdgeInsets.all(10.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
