// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefas_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Tarefa on _Tarefa, Store {
  final _$descricaoAtom = Atom(name: '_Tarefa.descricao');

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$_TarefaActionController = ActionController(name: '_Tarefa');

  @override
  void updateTarefa(String descricao) {
    final _$actionInfo =
        _$_TarefaActionController.startAction(name: '_Tarefa.updateTarefa');
    try {
      return super.updateTarefa(descricao);
    } finally {
      _$_TarefaActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
descricao: ${descricao}
    ''';
  }
}
