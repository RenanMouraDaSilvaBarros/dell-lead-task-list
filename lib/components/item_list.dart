import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String text;

  const ItemList({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
            color: Colors.blue,
            child: ListTile(
              title: Row(
                children: [
                  Text(text??"title"),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  IconButton(icon: Icon(Icons.remove), onPressed: () {})
                ],
              ),
            ),
          );
  }
}