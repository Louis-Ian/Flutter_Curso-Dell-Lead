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

  group('Teste resultado', () {
    testWidgets('Teste resultado após soma', (WidgetTester tester) async {
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
          _makeWidgetTestable(BotaoCalcular(_calculadora.onClickBotao)));
      final botaoCalcular = find.text('Calcular');

      expect(botaoCalcular, findsOneWidget);


      expect(_calculadora.primeiroNumero, 2);
      expect(_calculadora.operacaoEscolhida, '*');
      expect(_calculadora.segundoNumero, 4);

      await tester.tap(botaoCalcular);

      expect(_calculadora.resultado, 8);
    });
  });
}