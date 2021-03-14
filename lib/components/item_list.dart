import 'package:dell_lead_task_list/controllers/list_task_controller.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String text;
  final Function() onChange;
  final Function() onEdit;
  final Function() onRemove;

  final index;

  ItemList(
      {Key key,
      this.text,
      this.index,
      this.onChange,
      this.onEdit,
      this.onRemove})
      : super(key: key);

  final controller = ListTaskController();
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Row(
          children: [
            Text(text ?? "title"),
            Expanded(
              child: Container(),
            ),
            IconButton(icon: Icon(Icons.edit), onPressed: onEdit),
            IconButton(icon: Icon(Icons.remove), onPressed: onRemove)
          ],
        ),
      ),
    );
  }
}
