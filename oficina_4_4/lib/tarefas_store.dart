import 'package:mobx/mobx.dart';

part 'tarefas_store.g.dart';

class TarefaStore extends _TarefaStore with _$TarefaStore {}

abstract class _TarefaStore with Store {
  @observable
  ObservableList tarefaList = ObservableList<String>.of(['ex1', 'ex2']);

  @action
  void removerTarefa(int id) {
    tarefaList.removeAt(id);
  }

  @action
  void addTarefa(String descricao) {
    tarefaList.add(descricao);
  }
}
