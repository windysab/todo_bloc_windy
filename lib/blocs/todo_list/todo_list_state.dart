part of 'todo_list_bloc.dart';

class TodoListState extends Equatable {
  const TodoListState({
    required this.todos,
  });

  factory TodoListState.initial() {
    return TodoListState(todos: [
      Todo(id: '1', desc: 'Learn Dart'),
      Todo(id: '2', desc: 'Learn Flutter Widget'),
      Todo(id: '3', desc: 'Learn State Management'),
    ]);
  }

  final List<Todo> todos;

  @override
  List<Object> get props => [todos];

  @override
  String toString() => 'TodoListState(todos: $todos)';

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }
}
