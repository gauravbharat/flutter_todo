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
      return ListTile(
        title: Text(
          taskData.tasks[index].name,
          style: TextStyle(
              decoration: taskData.tasks[index].isDone
                  ? TextDecoration.lineThrough
                  : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: taskData.tasks[index].isDone,
          onChanged: (bool checkboxState) {
            Provider.of<Data>(context, listen: false)
                .updateTask(taskIndex: index);
          },
        ),
      );
    });
  }
}
