import 'package:dell_lead_task_list/controllers/task_controller.dart';
import 'package:dell_lead_task_list/utils/validation.dart';
import 'package:flutter/material.dart';

class TaskListEditScreen extends StatelessWidget {
  final Map data;
  const TaskListEditScreen({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int index = data["index"];
    final TaskController taskController = data["taskController"];
    final _formKey = GlobalKey<FormState>();

    final textController =
        TextEditingController(text: taskController.listTask[index]);

    return Scaffold(
      appBar: AppBar(title: Text('Editando')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Form(
            key: _formKey,
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
              if (_formKey.currentState.validate()) {
                print("valida");
                taskController.edit(index, textController.text);
                Navigator.pop(context);
              }
            },
            child: Text("Editar tarefa"),
          )
        ]),
      ),
    );
  }
}
