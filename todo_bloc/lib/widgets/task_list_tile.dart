import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';

import 'package:todo_bloc/model/todo.dart';
import 'package:todo_bloc/screens/add_todo_screen.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    super.key,
    required this.todo,
  });

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AddTodoScreen(
                todo: todo,
              ),
            ),
          );
        },
        leading: Checkbox(
          value: todo.isCompleted,
          onChanged: (value) {
            context.read<TodoBloc>().add(
                  MarkAsCompleted(
                    id: todo.id,
                    isCompleted: value ?? false,
                  ),
                );
          },
        ),
        title: Text(todo.title),
        trailing: IconButton(
          onPressed: () {
            context.read<TodoBloc>().add(DeleteTodoEvent(id: todo.id));
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
