import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';

class FilterTodoPopupButton extends StatefulWidget {
  const FilterTodoPopupButton({super.key});

  @override
  State<FilterTodoPopupButton> createState() => _FilterTodoPopupButtonState();
}

class _FilterTodoPopupButtonState extends State<FilterTodoPopupButton> {
  String selectedOption = 'Show All';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.filter_list),
      onSelected: (String value) {
        setState(() {
          selectedOption = value;
        });
      },
      itemBuilder: (context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'Show All',
          onTap: () {
            context.read<TodoBloc>().add(GetAllTodoEvent());
          },
          child: const Text('Show All'),
        ),
        PopupMenuItem<String>(
          value: 'Show Active',
          onTap: () {
            context.read<TodoBloc>().add(GetActiveTodoEvent());
          },
          child: const Text('Show Active'),
        ),
        PopupMenuItem<String>(
          value: 'Show Completed',
          onTap: () {
            context.read<TodoBloc>().add(GetCompletedTodoEvent());
          },
          child: const Text('Show Completed'),
        ),
      ],
    );
  }
}
