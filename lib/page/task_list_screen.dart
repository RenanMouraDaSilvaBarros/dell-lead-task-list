import 'package:dell_lead_task_list/components/item_list.dart';
import 'package:dell_lead_task_list/controllers/task_controller.dart';
import 'package:dell_lead_task_list/page/task_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskListScreen extends StatelessWidget {
  final controller = TaskController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dell lead task list"),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.listTask.length,
          itemBuilder: (context, int index) {
            return ItemList(
              text: controller.listTask[index],
              onRemove: () {
                controller.remove(index);
              },
              onEdit: () {
                Navigator.pushNamed(context, "EditTask", arguments: index);
              },
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "AddTask", arguments: controller);
        },
      ),
    );
  }
}
