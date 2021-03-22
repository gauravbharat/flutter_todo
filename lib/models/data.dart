import 'package:flutter/foundation.dart';
import 'package:flutter_todoey/models/task.dart';
import 'dart:collection';

class Data extends ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  // Pass back immutable list of tasks
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask({@required String taskName}) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask({@required int taskIndex}) {
    _tasks[taskIndex].toggleDone();
    notifyListeners();
  }

  void deleteTask({@required int taskIndex}) {
    _tasks.removeAt(taskIndex);
    notifyListeners();
  }
}
