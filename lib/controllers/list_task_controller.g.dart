// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_task_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListTaskController on ListTaskControllerBase, Store {
  final _$listTaskAtom = Atom(name: 'ListTaskControllerBase.listTask');

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

  final _$ListTaskControllerBaseActionController =
      ActionController(name: 'ListTaskControllerBase');

  @override
  void add(String task) {
    final _$actionInfo = _$ListTaskControllerBaseActionController.startAction(
        name: 'ListTaskControllerBase.add');
    try {
      return super.add(task);
    } finally {
      _$ListTaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int index) {
    final _$actionInfo = _$ListTaskControllerBaseActionController.startAction(
        name: 'ListTaskControllerBase.remove');
    try {
      return super.remove(index);
    } finally {
      _$ListTaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void edit(int index, String taskUpdate) {
    final _$actionInfo = _$ListTaskControllerBaseActionController.startAction(
        name: 'ListTaskControllerBase.edit');
    try {
      return super.edit(index, taskUpdate);
    } finally {
      _$ListTaskControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listTask: ${listTask}
    ''';
  }
}
