import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(
      //     bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              keyboardType: TextInputType.text,
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  // backgroundColor: Colors.lightBlueAccent,
                  ),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.lightBlueAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}