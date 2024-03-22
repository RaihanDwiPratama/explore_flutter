// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todo_bloc.dart';

sealed class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

// Add Todo
class AddTodoEvent extends TodoEvent {
  final Todo todo;

  const AddTodoEvent({required this.todo});

  @override
  List<Object> get props => [todo];
}

// delete todo
class DeleteTodoEvent extends TodoEvent {
  final String id;

  const DeleteTodoEvent({required this.id});

  @override
  List<Object> get props => [id];
}

// Update todo
class UpdateTodoEvent extends TodoEvent {
  final Todo todo;

  const UpdateTodoEvent({required this.todo});

  @override
  List<Object> get props => [todo];
}

// Mark todo as completed
class MarkAsCompleted extends TodoEvent {
  final String id;
  final bool isCompleted;

  const MarkAsCompleted({
    required this.id,
    required this.isCompleted,
  });

  @override
  List<Object> get props => [id, isCompleted];
}

// Get all todo
class GetAllTodoEvent extends TodoEvent {}

// Get active todo
class GetActiveTodoEvent extends TodoEvent {}

// Get completed todo
class GetCompletedTodoEvent extends TodoEvent {}
