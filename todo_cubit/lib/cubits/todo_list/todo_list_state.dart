// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'todo_list_cubit.dart';

class TodoListState extends Equatable {
  final List<Todo> todos;
  TodoListState({
    required this.todos,
  });

  factory TodoListState.initial() {
    return TodoListState(todos: [
      Todo(id: '1', desc: 'Clean the room'),
      Todo(id: '2', desc: 'wash the dish'),
      Todo(id: '3', desc: 'Do home Work'),
    ]);
  }

  @override
  List<Object> get props => [todos];

  @override
  String toString() => 'TodoListSTate(todos: $todos)';

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }
}
