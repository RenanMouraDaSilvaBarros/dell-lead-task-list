import 'package:mobx/mobx.dart';
part 'list_task_controller.g.dart';

class ListTaskController = ListTaskControllerBase with _$ListTaskController;

abstract class ListTaskControllerBase with Store {
  @observable
  ObservableList<String> listTask = ObservableList.of(['fsd','sffsd']);

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
