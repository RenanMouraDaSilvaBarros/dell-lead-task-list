import 'package:mobx/mobx.dart';
part 'task_controller.g.dart';

class TaskController = TaskControllerBase with _$TaskController;

abstract class TaskControllerBase with Store {
  @observable
  ObservableList<String> listTask = ObservableList.of([]);

  @action
  void add(String task) {
    listTask.add(task);
  }

  @action
  void remove(int index) {
    listTask.removeAt(index);
  }

  @action
  void edit(int index, String taskUpdate) {
    listTask[index] = taskUpdate;
  }
}
