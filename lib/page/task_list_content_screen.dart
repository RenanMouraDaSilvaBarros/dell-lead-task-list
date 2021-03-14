import 'package:flutter/material.dart';

class TaskListContentScreen extends StatelessWidget {
  //final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextFormField(
            maxLength: 30,
            decoration: InputDecoration(
              hintText: "Tarefa",
              border: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.black, width: 10),
              ),
            ),
            onSaved: (value) {},
            validator: (value) {
              return null;
            },
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text("Adicionar tarefa"),
          )
        ]),
      ),
    );
  }
}
