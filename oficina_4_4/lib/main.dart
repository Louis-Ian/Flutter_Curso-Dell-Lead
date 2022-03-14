import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:oficina_4_4/tarefa_list_store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Provider<TarefaList>(
        create: (_) => TarefaList(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Task App',
          theme: ThemeData(primarySwatch: Colors.blue),
          home: TarefaListScreen(),
          routes: {
            '/add': (context) => TarefaAddScreen(),
            '/edit': (context) => TarefaEditScreen(),
          },
        ),
      );
}

class TarefaListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _tarefaList = Provider.of<TarefaList>(context);
    Color darkBlue = const Color.fromARGB(255, 2, 6, 27);
    Color blue = const Color.fromARGB(255, 12, 22, 65);

    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: const Text("Tarefas",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            )),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: darkBlue,
      ),
      backgroundColor: blue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Observer(
          builder: (_) => TarefaCards(),
        ),
      ),
      floatingActionButton: Observer(
        builder: (_) => FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add');
          },
          backgroundColor: Colors.white,
          foregroundColor: darkBlue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class TarefaAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _tarefaList = Provider.of<TarefaList>(context);
    TextEditingController _textController = TextEditingController(text: '');

    Color darkBlue = const Color.fromARGB(255, 2, 6, 27);
    Color blue = const Color.fromARGB(255, 12, 22, 65);

    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: const Text("Adicionar Tarefa",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            )),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: darkBlue,
      ),
      backgroundColor: blue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Observer(
          builder: (_) => TarefaCardAdd(),
        ),
      ),
    );
  }
}

class TarefaEditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _tarefaList = Provider.of<TarefaList>(context);
    final args = ModalRoute.of(context)!.settings.arguments;

    Color darkBlue = const Color.fromARGB(255, 2, 6, 27);
    Color blue = const Color.fromARGB(255, 12, 22, 65);

    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: const Text("Editar Tarefa",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            )),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: darkBlue,
      ),
      backgroundColor: blue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Observer(
          builder: (_) => TarefaCardEdit(args.toString()),
        ),
      ),
    );
  }
}

class TarefaCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _tarefaList = Provider.of<TarefaList>(context);
    TextEditingController _textController = TextEditingController(text: '');

    Color darkBlue = const Color.fromARGB(255, 2, 6, 27);
    Color blue = const Color.fromARGB(255, 12, 22, 65);

    return Observer(
      builder: (_) => ListView.builder(
        itemCount: _tarefaList.tarefaList.length,
        itemBuilder: (_, ind) => Card(
          color: darkBlue,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/edit',
                      arguments: _tarefaList.tarefaList[ind].descricao),
                  onLongPress: () =>
                      _tarefaList.removerTarefa(_tarefaList.tarefaList[ind]),
                  child: Text(
                    _tarefaList.tarefaList[ind].descricao,
                    style: const TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TarefaCardAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _tarefaList = Provider.of<TarefaList>(context);
    TextEditingController _textController = TextEditingController(text: '');

    Color darkBlue = const Color.fromARGB(255, 2, 6, 27);
    Color blue = const Color.fromARGB(255, 12, 22, 65);

    return Observer(
      builder: (_) => Column(
        children: [
          Card(
            color: darkBlue,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: 'Descrição',
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    controller: _textController,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (String value) {
                      _tarefaList.addTarefa(_textController.text);
                      _textController.clear();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TarefaCardEdit extends StatelessWidget {
  String input;
  TarefaCardEdit(this.input, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tarefaList = Provider.of<TarefaList>(context);
    TextEditingController _textController = TextEditingController(text: input);

    Color darkBlue = const Color.fromARGB(255, 2, 6, 27);
    Color blue = const Color.fromARGB(255, 12, 22, 65);

    return Observer(
      builder: (_) => Column(
        children: [
          Card(
            color: darkBlue,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: 'Descrição',
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    controller: _textController,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (String value) {
                      _tarefaList.addTarefa(_textController.text);
                      _textController.clear();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
