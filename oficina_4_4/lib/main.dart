import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:oficina_4_4/tarefas_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final TarefaStore _tarefaStore = TarefaStore();

  @override
  Widget build(BuildContext context) {
    Color darkBlue = const Color.fromARGB(255, 2, 6, 27);
    Color blue = const Color.fromARGB(255, 12, 22, 65);

    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: const Text("Tarefas",
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: darkBlue,
      ),
      backgroundColor: blue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Observer(
          builder: (_) => TarefaCard(),
        ),
      ),
      floatingActionButton: Observer(
        builder: (_) => FloatingActionButton(
          onPressed: () {
            autorun((_) => _tarefaStore.tarefaList.add("descricao"));
          },
          backgroundColor: Colors.white,
          foregroundColor: darkBlue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class TarefaCard extends StatelessWidget {
  TarefaCard({Key? key}) : super(key: key);

  final TarefaStore _tarefaStore = TarefaStore();

  @override
  Widget build(BuildContext context) {
    Color darkBlue = const Color.fromARGB(255, 2, 6, 27);
    Color blue = const Color.fromARGB(255, 12, 22, 65);

    return Observer(
      builder: (context) => ListView.builder(
        itemCount: _tarefaStore.tarefaList.length,
        itemBuilder: (_, ind) => Card(
          color: darkBlue,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${_tarefaStore.tarefaList[ind]}',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
