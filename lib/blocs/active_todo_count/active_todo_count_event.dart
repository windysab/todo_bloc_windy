part of 'active_todo_count_bloc.dart';

abstract class ActiveTodoCountEvent extends Equatable {
  const ActiveTodoCountEvent();

  @override
  List<Object> get props => [];
}

class CalculateActiveTodoCountEvent extends ActiveTodoCountEvent {
  const CalculateActiveTodoCountEvent({
    required this.activeTodoCount,
  });

  final int activeTodoCount;

  @override
  List<Object> get props => [activeTodoCount];

  @override
  String toString() =>
      'CalculateActiveTodoCountEvent(activeTodoCount: $activeTodoCount)';
}
