// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskController on TaskControllerBase, Store {
  final _$listTaskAtom = Atom(name: 'TaskControllerBase.listTask');

  @override
  ObservableList<String> get listTask {
    _$listTaskAtom.reportRead();
    return super.listTask;
  }

  @override
  set listTask(ObservableList<String> value) {
    _$listTaskAtom.reportWrite(value, super.listTask, () {
      super.listTask = value;
    });
  }

  final _$TaskControllerBaseActionController =
      ActionController(name: 'TaskControllerBase');

  @override
  void add(String task) {
    final _$actionInfo = _$TaskControllerBaseActionController.startAction(
        name: 'TaskControllerBase.add');
    try {
      return super.add(task);
    } finally {
      _$TaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int index) {
    final _$actionInfo = _$TaskControllerBaseActionController.startAction(
        name: 'TaskControllerBase.remove');
    try {
      return super.remove(index);
    } finally {
      _$TaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void edit(int index, String taskUpdate) {
    final _$actionInfo = _$TaskControllerBaseActionController.startAction(
        name: 'TaskControllerBase.edit');
    try {
      return super.edit(index, taskUpdate);
    } finally {
      _$TaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listTask: ${listTask}
    ''';
  }
}
