import 'package:dell_lead_task_list/controllers/task_controller.dart';
import 'package:dell_lead_task_list/utils/validation.dart';
import 'package:flutter/material.dart';

class TaskListEditScreen extends StatelessWidget {
  final int index;
  TaskListEditScreen({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TaskController controller = TaskController();
    final textController =
        TextEditingController(text: controller.listTask[index]);

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
              validator: (value) => taskIsValid(value),
            ),
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              if (formKey.currentState.validate()) {
                print("valida");
                controller.edit(index, textController.text);
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
