import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/Models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'name'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
  //ensuring we are not able to modify the list anywhere else in the app

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }
  //method for adding tasks and notifying those tapping into the provider elsewhere that the data has been updated

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
