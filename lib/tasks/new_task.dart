import 'package:flutter/material.dart';

import './new_task_form.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajout'),
        backgroundColor: Colors.teal[400],
        centerTitle: true,
        elevation: 10.0,
      ),
      body: const NewTaskForm(),
    );
  }
}
