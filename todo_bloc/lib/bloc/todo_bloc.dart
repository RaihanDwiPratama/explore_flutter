import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_bloc/model/todo.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoInitial()) {
    // Add todo event handler
    on<AddTodoEvent>((event, emit) {
      final newTodo = List.of(state.todo)..add(event.todo);
      emit(TodoCompleted(todo: newTodo));
    });

    // Update todo event handler
    on<UpdateTodoEvent>((event, emit) {
      final newTodo = state.todo.map((todo) {
        if (todo.id == event.todo.id) {
          return event.todo;
        } else {
          return todo;
        }
      }).toList();

      emit(TodoCompleted(todo: newTodo));
    });

    // Delete todo event handler
    on<DeleteTodoEvent>((event, emit) {
      final newTodo = state.todo.where((todo) => todo.id != event.id).toList();

      emit(TodoCompleted(todo: newTodo));
    });

    // Marking todo as complete
    on<MarkAsCompleted>((event, emit) {
      final newTodo = state.todo.map((todo) {
        if (todo.id == event.id) {
          return todo.copyWith(isCompleted: event.isCompleted);
        } else {
          return todo;
        }
      }).toList();

      emit(TodoCompleted(todo: newTodo));
    });

    // Get all todo handler
    on<GetAllTodoEvent>((event, emit) {
      emit(TodoCompleted(todo: state.todo));
    });

    // Get active todo handler
    on<GetActiveTodoEvent>((event, emit) {
      emit(TodoCompleted(todo: state.todo, filter: Filter.active));
    });

    // Get completed todo handler
    on<GetCompletedTodoEvent>((event, emit) {
      emit(TodoCompleted(todo: state.todo, filter: Filter.completed));
    });
  }
}
