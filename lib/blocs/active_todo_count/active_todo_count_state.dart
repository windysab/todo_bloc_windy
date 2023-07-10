

part of 'active_todo_count_bloc.dart';

class ActiveTodoCountState extends Equatable {
  const ActiveTodoCountState(
    {required this.activeTodoCount,}
  );

  final int activeTodoCount;

  @override
  List<Object> get props => [activeTodoCount];

  @override
  String toString() => 'ActiveTodoCountState(activeTodoCount: $activeTodoCount)';

  ActiveTodoCountState copyWith({
    int? activeTodoCount,
  }) {
    return ActiveTodoCountState(
      activeTodoCount: activeTodoCount ?? this.activeTodoCount,
    );
  }
}
