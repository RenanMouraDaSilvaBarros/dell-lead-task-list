import 'package:dell_lead_task_list/pages/task_add_screen.dart';
import 'package:dell_lead_task_list/pages/task_edit_screen.dart';
import 'package:dell_lead_task_list/pages/task_list_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    final Map<String, dynamic> routes = {
      "TaskList": MaterialPageRoute(builder: (_) => TaskListScreen()),
      "AddTask": MaterialPageRoute(builder: (_) => TaskListAddScreen(taskController: args,)),
      "EditTask": MaterialPageRoute(builder: (_) => TaskListEditScreen(data: args,)),
    };
    if (routes.containsKey(settings.name)) {
      return routes[settings.name];
    } else {
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'ERROR',
                //textScaleFactor: 0.98,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Text(
                "Mensagem desenvolvedor:",
                //textScaleFactor: 0.98,
                style: TextStyle(fontSize: 12.0),
              ),
              Text(
                "Erro na rota",
                //textScaleFactor: 0.98,
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      );
    });
  }
}
