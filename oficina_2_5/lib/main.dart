import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int num1 = 0;
  int num2 = 0;
  double resultado = 0;
  String operacao = '';

  void calcular() {
    setState(() {
      switch (operacao) {
        case '+':
          resultado = num1.toDouble() + num2.toDouble();
          break;
        case '-':
          resultado = num1.toDouble() - num2.toDouble();
          break;
        case '*':
          resultado = num1.toDouble() * num2.toDouble();
          break;
        case '/':
          num2 != 0 ? resultado = (num1 / num2) : resultado = 0;
          break;
        default:
          zerar();
          break;
      }
    });
  }

  void zerar() {
    setState(() {
      num1 = 0;
      num2 = 0;
      resultado = 0;
      operacao = '';
    });
  }

  void gravarNum1(int entrada) {
    setState(() {
      num1 = entrada;
    });
  }

  void gravarNum2(int entrada) {
    setState(() {
      num2 = entrada;
    });
  }

  void gravarOperacao(String entrada) {
    setState(() {
      operacao = entrada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => {gravarNum1(0)},
                          child: const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum1(1)},
                          child: const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum1(2)},
                          child: const Text(
                            '2',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum1(3)},
                          child: const Text(
                            '3',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum1(4)},
                          child: const Text(
                            '4',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => {gravarNum1(5)},
                          child: const Text(
                            '5',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum1(6)},
                          child: const Text(
                            '6',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum1(7)},
                          child: const Text(
                            '7',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum1(8)},
                          child: const Text(
                            '8',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum1(9)},
                          child: const Text(
                            '9',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                color: Colors.black26,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => {gravarOperacao('+')},
                      child: const Text(
                        '+',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {gravarOperacao('-')},
                      child: const Text(
                        '-',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {gravarOperacao('*')},
                      child: const Text(
                        '*',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {gravarOperacao('/')},
                      child: const Text(
                        '/',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
                color: Colors.black26,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => {gravarNum2(0)},
                          child: const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum2(1)},
                          child: const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum2(2)},
                          child: const Text(
                            '2',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum2(3)},
                          child: const Text(
                            '3',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum2(4)},
                          child: const Text(
                            '4',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () => {gravarNum2(5)},
                          child: const Text(
                            '5',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum2(6)},
                          child: const Text(
                            '6',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum2(7)},
                          child: const Text(
                            '7',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum2(8)},
                          child: const Text(
                            '8',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {gravarNum2(9)},
                          child: const Text(
                            '9',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 140 * (8 / 16),
                      width: 140,
                      child: ElevatedButton(
                        onPressed: () => {calcular()},
                        child: const Text(
                          'Calcular',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 140 * (8 / 16),
                      width: 140,
                      child: ElevatedButton(
                        onPressed: () => {zerar()},
                        child: const Text(
                          'Zerar',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Text(
                        'Operação: ${num1 != 0 ? num1 : ''} ${operacao != '' ? operacao : ''} ${num2 != 0 ? num2 : ''}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Text(
                        'Resultado: ${resultado != 0.0 ? resultado : ''}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }
}
