import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/active_todo_counter/active_todo_counter_cubit.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Todo',
          style: TextStyle(fontSize: 30.0),
        ),
        BlocBuilder<ActiveTodoCountCubit, ActiveTodoCountState>(
          builder: (context, state) {
            return Text('${state.activeTodoCount} items left to do',
                style: TextStyle(fontSize: 20.0, color: Colors.redAccent));
          },
        ),
        // Text(
        //     '${context.watch<ActiveTodoCountCubit>().state.activeTodoCount} items left to do',
        //     style: TextStyle(fontSize: 20.0, color: Colors.redAccent)),
      ],
    );
  }
}
