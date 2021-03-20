import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(index: index);
      },
      itemCount: Provider.of<Data>(context).taskCount,
    );
  }
}
