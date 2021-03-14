import 'package:dell_lead_task_list/components/item_list.dart';
import 'package:dell_lead_task_list/controllers/list_task_controller.dart';
import 'package:dell_lead_task_list/page/task_list_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskListScreen extends StatelessWidget {
  final controller = ListTaskController();
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
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return TaskListEditScreen(
                    controller: controller,
                    index: index,
                  );
                }));
              },
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
