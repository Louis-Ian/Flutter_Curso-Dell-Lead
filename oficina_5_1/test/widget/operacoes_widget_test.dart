import 'package:calculadora_flutter_dell/calculadora_store.dart';
import 'package:calculadora_flutter_dell/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  Widget _makeWidgetTestable(_child) {
    return MaterialApp(
        home: _child
    );
  }

  group('Teste operações', ()
  {
    testWidgets('Teste soma', (WidgetTester tester) async {
      CalculadoraStore _calculadora = CalculadoraStore();
      await tester.pumpWidget(
          _makeWidgetTestable(Operacoes(_calculadora.onOperacaoEscolhida)));

      final somaFinder = find.text('+');

      expect(somaFinder, findsOneWidget);

      await tester.tap(somaFinder);
      expect(_calculadora.operacaoEscolhida, '+');
    });

    testWidgets('Teste subtração', (WidgetTester tester) async {
      CalculadoraStore _calculadora = CalculadoraStore();
      await tester.pumpWidget(
          _makeWidgetTestable(Operacoes(_calculadora.onOperacaoEscolhida)));

      final subtracaoFinder = find.text('-');

      expect(subtracaoFinder, findsOneWidget);

      await tester.tap(subtracaoFinder);
      expect(_calculadora.operacaoEscolhida, '-');
    });

    testWidgets('Teste multiplicação', (WidgetTester tester) async {
      CalculadoraStore _calculadora = CalculadoraStore();
      await tester.pumpWidget(
          _makeWidgetTestable(Operacoes(_calculadora.onOperacaoEscolhida)));

      final multiplicacaoFinder = find.text('*');

      expect(multiplicacaoFinder, findsOneWidget);

      await tester.tap(multiplicacaoFinder);
      expect(_calculadora.operacaoEscolhida, '*');
    });

    testWidgets('Teste divisão', (WidgetTester tester) async {
      CalculadoraStore _calculadora = CalculadoraStore();
      await tester.pumpWidget(
          _makeWidgetTestable(Operacoes(_calculadora.onOperacaoEscolhida)));

      final divisaoFinder = find.text('/');

      expect(divisaoFinder, findsOneWidget);

      await tester.tap(divisaoFinder);
      expect(_calculadora.operacaoEscolhida, '/');
    });

    testWidgets('Teste resto', (WidgetTester tester) async {
      CalculadoraStore _calculadora = CalculadoraStore();
      await tester.pumpWidget(
          _makeWidgetTestable(Operacoes(_calculadora.onOperacaoEscolhida)));

      final restoFinder = find.text('%');

      expect(restoFinder, findsOneWidget);

      await tester.tap(restoFinder);
      expect(_calculadora.operacaoEscolhida, '%');
    });
  });
}