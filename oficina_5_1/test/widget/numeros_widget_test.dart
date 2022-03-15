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

  testWidgets('Teste widget Numeros', (WidgetTester tester)  async {
    final _calculadora = CalculadoraStore();
    await tester.pumpWidget(_makeWidgetTestable(Numeros(_calculadora.onPrimeiroNumeroEscolhido)));
    expect(_calculadora.primeiroNumero, 0);

    final zeroFinder = find.text('0');
    final umFinder = find.text('1');
    final doisFinder = find.text('2');
    final tresFinder = find.text('3');
    final quatroFinder = find.text('4');
    final cincoFinder = find.text('5');
    final seisFinder = find.text('6');
    final seteFinder = find.text('7');
    final oitoFinder = find.text('8');
    final noveFinder = find.text('9');

    expect(zeroFinder, findsOneWidget);
    expect(umFinder, findsOneWidget);
    expect(doisFinder, findsOneWidget);
    expect(tresFinder, findsOneWidget);
    expect(quatroFinder, findsOneWidget);
    expect(cincoFinder, findsOneWidget);
    expect(seisFinder, findsOneWidget);
    expect(seteFinder, findsOneWidget);
    expect(oitoFinder, findsOneWidget);
    expect(noveFinder, findsOneWidget);

    await tester.tap(noveFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 9);

    await tester.tap(oitoFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 8);

    await tester.tap(seteFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 7);

    await tester.tap(seisFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 6);

    await tester.tap(cincoFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 5);

    await tester.tap(quatroFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 4);

    await tester.tap(tresFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 3);

    await tester.tap(doisFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 2);

    await tester.tap(umFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 1);

    await tester.tap(zeroFinder);
    await tester.pumpAndSettle();
    expect(_calculadora.primeiroNumero, 0);
  });
}
