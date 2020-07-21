import 'package:flutter/material.dart';
import 'package:todoey_flutter/Models/TaskData.dart';
import 'views/TasksView.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //changeNotifierProvider will transmit data through the app.
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksView(),
      ),
    );
  }
}
