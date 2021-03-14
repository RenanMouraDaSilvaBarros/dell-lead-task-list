import 'package:dell_lead_task_list/components/item_list.dart';
import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dell lead task list"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, int i) {
          return ItemList();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          
        },
      ),
    );
  }
}
