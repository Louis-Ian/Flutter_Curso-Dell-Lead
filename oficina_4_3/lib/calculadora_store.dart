import 'package:mobx/mobx.dart';

part 'calculadora_store.g.dart';

class CalculadoraStore extends _CalculadoraStore with _$CalculadoraStore {}

abstract class _CalculadoraStore with Store {
  @observable
  int primeiroNumero = 0;

  @observable
  int segundoNumero = 0;

  @observable
  String operacaoEscolhida = '';

  @observable
  double resultado = 0;
  
  bool todasOpcoesForamEscolhidas() {
    return operacaoEscolhida != '';
  }

  @action
  void onClickBotao() {
    if (operacaoEscolhida == '+') {
      resultado = (primeiroNumero + segundoNumero).toDouble();
    } else if (operacaoEscolhida == '-') {
      resultado = (primeiroNumero - segundoNumero).toDouble();
    } else if (operacaoEscolhida == '*') {
      resultado = (primeiroNumero * segundoNumero).toDouble();
    } else if (operacaoEscolhida == '/') {
      resultado = (primeiroNumero / segundoNumero).toDouble();
    } else if (operacaoEscolhida == '%') {
      resultado = (primeiroNumero % segundoNumero).toDouble();
    }
  }

  @action
  void onClickBotaoZerar() {
    primeiroNumero = 0;
    segundoNumero = 0;
    operacaoEscolhida = '';
    resultado = 0;
  }

  @action
  void onPrimeiroNumeroEscolhido(int numero) {
    primeiroNumero = numero;
  }

  @action
  void onSegundoNumeroEscolhido(int numero) {
    segundoNumero = numero;
  }

  @action
  void onOperacaoEscolhida(String operacao) {
    operacaoEscolhida = operacao;
  }
}
