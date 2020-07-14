import 'package:flutter/material.dart';
import 'views/TasksView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksView(),
    );
  }
}
