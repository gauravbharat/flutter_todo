import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final int index;
  TaskTile({@required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, Data taskData, Widget child) {
      final taskName = taskData.tasks[index].name;
      final taskIsChecked = taskData.tasks[index].isDone;
      return ListTile(
        onLongPress: () {
          taskData.deleteTask(taskIndex: index);
        },
        title: Text(
          taskName,
          style: TextStyle(
              decoration: taskIsChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: taskIsChecked,
          onChanged: (bool checkboxState) {
            taskData.updateTask(taskIndex: index);
          },
        ),
      );
    });
  }
}
