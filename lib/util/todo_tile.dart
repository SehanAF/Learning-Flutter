// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged; 

  ToDoTile({
    super.key, 
    required this.taskName, 
    required this.taskCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            // checkbox
            Checkbox(value: value, onChanged: onChanged),

            // task name
            Text("Make Tutorial"),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}