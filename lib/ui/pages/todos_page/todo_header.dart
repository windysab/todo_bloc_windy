import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_windy/blocs/active_todo_count/active_todo_count_bloc.dart';
import 'package:todo_bloc_windy/blocs/todo_list/todo_list_bloc.dart';

import '../../../data/models/todo_model.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'TODO',
          style: TextStyle(fontSize: 40.0),
        ),
        BlocListener<TodoListBloc, TodoListState>(
          listener: (context, state) {
            final int activeTodoCount = state.todos
                .where((Todo todo) => !todo.completed)
                .toList()
                .length;

            context.read<ActiveTodoCountBloc>().add(
                CalculateActiveTodoCountEvent(
                    activeTodoCount: activeTodoCount));
          },
          child: BlocBuilder<ActiveTodoCountBloc, ActiveTodoCountState>(
            builder: (context, state) {
              return Text('${state.activeTodoCount} items left',
                  style:
                      const TextStyle(fontSize: 20.0, color: Colors.redAccent));
            },
          ),
        )
      ],
    );
  }
}
