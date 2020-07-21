import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/Models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'name'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
