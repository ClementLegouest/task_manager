import 'package:flutter/material.dart';

import './task_card.dart';
import './models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> _tasks = <Task>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text('Mes tâches'),
      ),
      body: Center(
        child: TaskCard(description: 'Titre de la tâche', title: 'Description de la tâche',),
      ),
    );
  }
}
