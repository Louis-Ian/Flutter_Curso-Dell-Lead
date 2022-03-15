import 'package:calculadora_flutter_dell/calculadora_store.dart';
import 'package:calculadora_flutter_dell/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget _makeWidgetTestable(_child) {
    return MaterialApp(
        home: _child
    );
  }

  group('Teste zerar', () {
    testWidgets('Teste zerar após seleção', (WidgetTester tester) async {
      CalculadoraStore _calculadora = CalculadoraStore();
      await tester.pumpWidget(
          _makeWidgetTestable(Numeros(_calculadora.onPrimeiroNumeroEscolhido)));
      final doisPrimeiro = find.text('2').first;
      await tester.tap(doisPrimeiro);

      await tester.pumpWidget(
          _makeWidgetTestable(Operacoes(_calculadora.onOperacaoEscolhida)));
      final multiplicacao = find.text('*');
      await tester.tap(multiplicacao);

      await tester.pumpWidget(
          _makeWidgetTestable(Numeros(_calculadora.onSegundoNumeroEscolhido)));
      final quatroSegundo = find.text('4');
      await tester.tap(quatroSegundo);

      await tester.pumpWidget(
          _makeWidgetTestable(BotaoZerar(_calculadora.onClickBotaoZerar)));
      final botaoZerar = find.text('Zerar');

      expect(botaoZerar, findsOneWidget);


      expect(_calculadora.primeiroNumero, 2);
      expect(_calculadora.operacaoEscolhida, '*');
      expect(_calculadora.segundoNumero, 4);

      await tester.tap(botaoZerar);

      expect(_calculadora.primeiroNumero, 0);
      expect(_calculadora.operacaoEscolhida, '');
      expect(_calculadora.segundoNumero, 0);
    });
  });
}