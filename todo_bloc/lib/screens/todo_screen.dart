import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';

import 'add_todo_screen.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Screen'),
        actions: const [
          FilterTodoPopupButton(),
        ],
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          final todo = state.filteredTodo;

          if (todo.isNotEmpty) {
            return TaskList(tasks: todo);
          }

          return Center(
            child: Text(
              'No todos for now',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const AddTodoScreen(),
            ),
          );
        },
      ),
    );
  }
}
