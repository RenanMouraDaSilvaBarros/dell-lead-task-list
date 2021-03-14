import 'package:dell_lead_task_list/controllers/list_task_controller.dart';
import 'package:dell_lead_task_list/page/task_list_screen.dart';
import 'package:flutter/material.dart';

class TaskListEditScreen extends StatelessWidget {
  //final _formKey = GlobalKey<FormState>();
  final int index;
  final ListTaskController controller;

  const TaskListEditScreen({Key key, this.index, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    TextEditingController textController =
        TextEditingController(text: controller.listTask[index]);

    return Scaffold(
      appBar: AppBar(title: Text('Editando')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextFormField(
            controller: textController,
            maxLength: 30,
            decoration: InputDecoration(
              hintText: "Tarefa",
              border: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.black, width: 10),
              ),
            ),
            onSaved: (value) {},
            validator: (value) {
              return value.isEmpty ?? "campo vazio";
            },
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              controller.edit(index, textController.text);
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return TaskListScreen();
              }));
            },
            child: Text("Editar tarefa"),
          )
        ]),
      ),
    );
  }
}
