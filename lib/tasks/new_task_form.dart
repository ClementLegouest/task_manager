import 'package:flutter/material.dart';

class NewTaskForm extends StatefulWidget {
  const NewTaskForm({Key? key}) : super(key: key);

  @override
  State<NewTaskForm> createState() => _NewTaskFormState();
}

class _NewTaskFormState extends State<NewTaskForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final descriptionController = TextEditingController();

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.list),
                hintText: 'Tâche'
            ),
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? 'ce champ ne peut être laissé vide'
                  : null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.list),
                hintText: 'Description'
            ),
            validator: (value) {
              return (value == null || value.isEmpty)
                  ? 'ce champ ne peut être laissé vide'
                  : null;
            },
            controller: descriptionController,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Ajout de la tâche'))
                );
              }
            },
            child: const Text('Ajout'),
          )
        ],
      ),
    );
  }
}
