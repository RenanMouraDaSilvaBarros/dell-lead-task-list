import 'package:dell_lead_task_list/components/item_list.dart';
import 'package:dell_lead_task_list/controllers/task_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskListScreen extends StatelessWidget {
  final TaskController taskController = TaskController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dell lead task list"),
      ),
      body: Observer(builder: (context) {
        return taskController.listTask.isNotEmpty
            ? ListView.builder(
                itemCount: taskController.listTask.length,
                itemBuilder: (context, int index) {
                  return ItemList(
                      text: taskController.listTask[index],
                      onRemove: () {
                        taskController.remove(index);
                      },
                      onEdit: () => Navigator.pushNamed(context, "EditTask",
                              arguments: {
                                'index': index,
                                'taskController': taskController
                              }));
                },
              )
            : Center(child: Text("Lista Vazia!"));
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => Navigator.pushNamed(context, "AddTask",
              arguments: taskController)),
    );
  }
}
