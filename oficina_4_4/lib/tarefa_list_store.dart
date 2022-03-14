import 'package:mobx/mobx.dart';
import 'package:oficina_4_4/tarefas_store.dart';

part 'tarefa_list_store.g.dart';

class TarefaList = _TarefaList with _$TarefaList;

abstract class _TarefaList with Store {
  @observable
  ObservableList<Tarefa> tarefaList = ObservableList<Tarefa>();

  @action
  void addTarefa(String descricao) {
    final tarefa = Tarefa(descricao);
    tarefaList.add(tarefa);
  }

  @action
  void removerTarefa(Tarefa t) {
    tarefaList.removeWhere((x) => x == t);
  }
}
