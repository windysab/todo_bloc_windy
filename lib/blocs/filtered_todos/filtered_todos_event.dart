part of 'filtered_todos_bloc.dart';

abstract class FilteredTodosEvent extends Equatable {
  const FilteredTodosEvent();

  @override
  List<Object> get props => [];
}

class CalculatateFilteredTodosEvent extends FilteredTodosEvent {
  final List<Todo> filteredTodos;
  const CalculatateFilteredTodosEvent({
    required this.filteredTodos,
  });

  @override
  String toString() =>
      'CalculatateFilteredTodosEvent(filteredTodos: $filteredTodos)';

  @override
  List<Object> get props => [filteredTodos];
}
