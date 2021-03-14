import 'package:dell_lead_task_list/controllers/task_controller.dart';
import 'package:dell_lead_task_list/utils/validation.dart';
import 'package:flutter/material.dart';

class TaskListAddScreen extends StatelessWidget {
  final TaskController taskController;

  const TaskListAddScreen({Key key, this.taskController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text('Adicionando')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Form(
            key: formKey,
            child: TextFormField(
              controller: textController,
              maxLength: 30,
              decoration: InputDecoration(
                hintText: "Tarefa",
                border: OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.black, width: 10),
                ),
              ),
              validator: (value) => taskIsValid(value),
            ),
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              if (formKey.currentState.validate()) {
                print("adicionando");
                taskController.listTask.add(textController.text);
                Navigator.pop(context);
              }
            },
            child: Text("Adicionar tarefa"),
          )
        ]),
      ),
    );
  }
}
