// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';

import 'package:todo_bloc/model/todo.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({
    super.key,
    this.todo,
  });

  final Todo? todo;

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final _titleController = TextEditingController();
  bool isEditing = false;
  Todo? todo;

  @override
  void initState() {
    if (widget.todo != null) {
      isEditing = true;
      _titleController.text = widget.todo!.title;
      todo = widget.todo;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              autofocus: true,
              decoration: const InputDecoration(labelText: 'Task Title'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (isEditing) {
                  final todo = widget.todo!.copyWith(
                    title: _titleController.text,
                  );

                  context.read<TodoBloc>().add(UpdateTodoEvent(todo: todo));
                } else {
                  final todo = Todo(
                    id: DateTime.now().toIso8601String(),
                    title: _titleController.text,
                    isCompleted: false,
                  );

                  context.read<TodoBloc>().add(AddTodoEvent(todo: todo));
                }

                // Close screen after adding task
                Navigator.pop(context);
              },
              child: Text(isEditing ? 'Update Task' : 'Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
