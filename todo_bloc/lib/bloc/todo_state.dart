part of 'todo_bloc.dart';

enum Filter { all, active, completed }

sealed class TodoState extends Equatable {
  final List<Todo> todo;

  const TodoState({required this.todo});

  // placeholder
  List<Todo> get filteredTodo => todo;

  @override
  List<Object> get props => [todo];
}

final class TodoInitial extends TodoState {
  const TodoInitial() : super(todo: const []);
}

final class TodoCompleted extends TodoState {
  final Filter filter;

  // ignore: use_super_parameters
  const TodoCompleted({
    required List<Todo> todo,
    this.filter = Filter.all,
  }) : super(todo: todo);

  @override
  List<Todo> get filteredTodo {
    switch (filter) {
      case Filter.completed:
        return todo.where((todo) => todo.isCompleted).toList();
      case Filter.active:
        return todo.where((todo) => !todo.isCompleted).toList();
      case Filter.all:
        return todo;
    }
  }

  @override
  List<Object> get props => [filter, todo];
}
