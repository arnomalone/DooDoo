import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:doodoo_flutter/model/task.dart';

class TasksData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }


  void addTask (String newTaskTitle) {
    final task= new Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask (Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (Task task) {
    if(task.isDone) _tasks.remove(task);
    else updateTask(task);
    notifyListeners();
  }
}