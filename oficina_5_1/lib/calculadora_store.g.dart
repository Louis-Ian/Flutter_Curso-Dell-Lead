// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculadoraStore on _CalculadoraStore, Store {
  final _$primeiroNumeroAtom = Atom(name: '_CalculadoraStore.primeiroNumero');

  @override
  int get primeiroNumero {
    _$primeiroNumeroAtom.reportRead();
    return super.primeiroNumero;
  }

  @override
  set primeiroNumero(int value) {
    _$primeiroNumeroAtom.reportWrite(value, super.primeiroNumero, () {
      super.primeiroNumero = value;
    });
  }

  final _$segundoNumeroAtom = Atom(name: '_CalculadoraStore.segundoNumero');

  @override
  int get segundoNumero {
    _$segundoNumeroAtom.reportRead();
    return super.segundoNumero;
  }

  @override
  set segundoNumero(int value) {
    _$segundoNumeroAtom.reportWrite(value, super.segundoNumero, () {
      super.segundoNumero = value;
    });
  }

  final _$operacaoEscolhidaAtom =
      Atom(name: '_CalculadoraStore.operacaoEscolhida');

  @override
  String get operacaoEscolhida {
    _$operacaoEscolhidaAtom.reportRead();
    return super.operacaoEscolhida;
  }

  @override
  set operacaoEscolhida(String value) {
    _$operacaoEscolhidaAtom.reportWrite(value, super.operacaoEscolhida, () {
      super.operacaoEscolhida = value;
    });
  }

  final _$resultadoAtom = Atom(name: '_CalculadoraStore.resultado');

  @override
  double get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(double value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  final _$_CalculadoraStoreActionController =
      ActionController(name: '_CalculadoraStore');

  @override
  void onClickBotao() {
    final _$actionInfo = _$_CalculadoraStoreActionController.startAction(
        name: '_CalculadoraStore.onClickBotao');
    try {
      return super.onClickBotao();
    } finally {
      _$_CalculadoraStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onClickBotaoZerar() {
    final _$actionInfo = _$_CalculadoraStoreActionController.startAction(
        name: '_CalculadoraStore.onClickBotaoZerar');
    try {
      return super.onClickBotaoZerar();
    } finally {
      _$_CalculadoraStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPrimeiroNumeroEscolhido(int numero) {
    final _$actionInfo = _$_CalculadoraStoreActionController.startAction(
        name: '_CalculadoraStore.onPrimeiroNumeroEscolhido');
    try {
      return super.onPrimeiroNumeroEscolhido(numero);
    } finally {
      _$_CalculadoraStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSegundoNumeroEscolhido(int numero) {
    final _$actionInfo = _$_CalculadoraStoreActionController.startAction(
        name: '_CalculadoraStore.onSegundoNumeroEscolhido');
    try {
      return super.onSegundoNumeroEscolhido(numero);
    } finally {
      _$_CalculadoraStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onOperacaoEscolhida(String operacao) {
    final _$actionInfo = _$_CalculadoraStoreActionController.startAction(
        name: '_CalculadoraStore.onOperacaoEscolhida');
    try {
      return super.onOperacaoEscolhida(operacao);
    } finally {
      _$_CalculadoraStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
primeiroNumero: ${primeiroNumero},
segundoNumero: ${segundoNumero},
operacaoEscolhida: ${operacaoEscolhida},
resultado: ${resultado}
    ''';
  }
}
