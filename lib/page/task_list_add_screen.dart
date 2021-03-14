import 'package:dell_lead_task_list/controllers/list_task_controller.dart';
import 'package:flutter/material.dart';

class TaskListAddScreen extends StatelessWidget {
  final ListTaskController controller;
  final formKey = GlobalKey<FormState>();
  TextEditingController textController;
  TaskListAddScreen({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Editando')),
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
              validator: (value) {
                if (value.isEmpty) {
                  return "campo vazio";
                }
              },
            ),
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              if (formKey.currentState.validate()) {
                print("valida");
                controller.add(textController.text);
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
