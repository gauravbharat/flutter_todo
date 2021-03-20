import 'package:flutter/foundation.dart';
import 'package:flutter_todoey/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask({@required String taskName}) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask({@required int taskIndex}) {
    tasks[taskIndex].toggleDone();
    notifyListeners();
  }

  void deleteTask({@required int taskIndex}) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }
}
