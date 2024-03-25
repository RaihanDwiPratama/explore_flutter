import 'package:flutter/material.dart';

import '../model/todo.dart';
import 'task_list_tile.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({
    super.key,
    required this.todo,
  });

  final List<Todo> todo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      child: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (context, index) {
          final task = todo[index];
          return TaskListTile(todo: task);
        },
      ),
    );
  }
}
