import 'package:mobx/mobx.dart';

part 'tarefas_store.g.dart';

class Tarefa = _Tarefa with _$Tarefa;

abstract class _Tarefa with Store {
  _Tarefa(this.descricao);

  @observable
  String descricao = '';

  @action
  void updateTarefa(String descricao) {
    this.descricao = descricao;
  }
}
