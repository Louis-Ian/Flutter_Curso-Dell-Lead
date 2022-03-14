// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefa_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefaList on _TarefaList, Store {
  final _$tarefaListAtom = Atom(name: '_TarefaList.tarefaList');

  @override
  ObservableList<Tarefa> get tarefaList {
    _$tarefaListAtom.reportRead();
    return super.tarefaList;
  }

  @override
  set tarefaList(ObservableList<Tarefa> value) {
    _$tarefaListAtom.reportWrite(value, super.tarefaList, () {
      super.tarefaList = value;
    });
  }

  final _$_TarefaListActionController = ActionController(name: '_TarefaList');

  @override
  void addTarefa(String descricao) {
    final _$actionInfo = _$_TarefaListActionController.startAction(
        name: '_TarefaList.addTarefa');
    try {
      return super.addTarefa(descricao);
    } finally {
      _$_TarefaListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removerTarefa(Tarefa t) {
    final _$actionInfo = _$_TarefaListActionController.startAction(
        name: '_TarefaList.removerTarefa');
    try {
      return super.removerTarefa(t);
    } finally {
      _$_TarefaListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tarefaList: ${tarefaList}
    ''';
  }
}
