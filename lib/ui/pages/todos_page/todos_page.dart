import 'package:flutter/material.dart';
import 'package:todo_bloc_windy/ui/pages/todos_page/create_todo.dart';
import 'package:todo_bloc_windy/ui/pages/todos_page/seacrh_and_filter_todo.dart';
import 'package:todo_bloc_windy/ui/pages/todos_page/show_todo.dart';
import 'package:todo_bloc_windy/ui/pages/todos_page/todo_header.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 40.0,
            ),
            child: Column(
              children: [
                TodoHeader(),
                CreateTodo(),
                SizedBox(
                  height: 20.0,
                ),
                SeachAndFilterTodo(),
                ShowTodos()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
