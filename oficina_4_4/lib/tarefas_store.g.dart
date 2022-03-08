// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefas_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefaStore on _TarefaStore, Store {
  final _$tarefaListAtom = Atom(name: '_TarefaStore.tarefaList');

  @override
  ObservableList<dynamic> get tarefaList {
    _$tarefaListAtom.reportRead();
    return super.tarefaList;
  }

  @override
  set tarefaList(ObservableList<dynamic> value) {
    _$tarefaListAtom.reportWrite(value, super.tarefaList, () {
      super.tarefaList = value;
    });
  }

  final _$_TarefaStoreActionController = ActionController(name: '_TarefaStore');

  @override
  void removerTarefa(int id) {
    final _$actionInfo = _$_TarefaStoreActionController.startAction(
        name: '_TarefaStore.removerTarefa');
    try {
      return super.removerTarefa(id);
    } finally {
      _$_TarefaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTarefa(String descricao) {
    final _$actionInfo = _$_TarefaStoreActionController.startAction(
        name: '_TarefaStore.addTarefa');
    try {
      return super.addTarefa(descricao);
    } finally {
      _$_TarefaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tarefaList: ${tarefaList}
    ''';
  }
}
