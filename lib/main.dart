import 'package:dell_lead_task_list/page/task_list_screen.dart';
import 'package:dell_lead_task_list/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: Routes.generateRoute,
    home: TaskListScreen(),
  ));
}

