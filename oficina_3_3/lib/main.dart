import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Botões',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Wrap(
                    spacing: 12,
                    runSpacing: 20,
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.spaceBetween,
                    children: const [
                      BotaoBase(
                        texto: 'Botão base',
                      ),
                      BotaoAzul(
                        texto: 'Botão azul',
                      ),
                      BotaoVerde(texto: 'Botão verde')
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 12,
                    runSpacing: 20,
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.spaceBetween,
                    children: const [
                      BotaoRedondoBase(texto: 'Botão redondo base'),
                      BotaoRedondoAzul(texto: 'Botão redondo azul'),
                      BotaoRedondoAmarelo(texto: 'Botão redondo amarelo')
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 12,
                    runSpacing: 20,
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.spaceBetween,
                    children: const [
                      BotaoIconeBase(
                        texto: 'Botão com ícone base',
                        cor: Colors.black,
                        icone: Icon(
                          Icons.info,
                          color: Colors.lightBlue,
                        ),
                      ),
                      BotaoIconeAlerta(texto: 'Botão com ícone de alerta'),
                      BotaoIconeAprovado(texto: 'Botão com ícone de feito'),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BotaoBase extends StatelessWidget {
  final String texto;
  final Color cor;
  final Color bg;

  const BotaoBase({
    Key? key,
    required this.texto,
    this.cor = Colors.black,
    this.bg = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: TextButton(
        onPressed: () => {
          ScaffoldMessenger.of(context).clearSnackBars(),
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Clicou no ' + texto.toString(),
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              backgroundColor: Colors.blue,
            ),
          ),
        },
        child: Text(
          texto,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: cor,
          ),
        ),
      ),
    );
  }
}

class BotaoAzul extends BotaoBase {
  const BotaoAzul({
    Key? key,
    required String texto,
  }) : super(key: key, texto: texto, cor: Colors.black, bg: Colors.blueAccent);
}

class BotaoVerde extends BotaoBase {
  const BotaoVerde({
    Key? key,
    required String texto,
  }) : super(key: key, texto: texto, cor: Colors.black, bg: Colors.greenAccent);
}

class BotaoRedondoBase extends StatelessWidget {
  final String texto;
  final Color cor;
  final Color bg;

  const BotaoRedondoBase({
    Key? key,
    required this.texto,
    this.cor = Colors.black,
    this.bg = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {
        ScaffoldMessenger.of(context).clearSnackBars(),
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Clicou no ' + texto.toString(),
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
        ),
      },
      child: Text(
        texto,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: cor,
        ),
      ),
      style: TextButton.styleFrom(
        shape: const StadiumBorder(),
        primary: cor,
        backgroundColor: bg,
      ),
    );
  }
}

class BotaoRedondoAzul extends BotaoRedondoBase {
  const BotaoRedondoAzul({
    Key? key,
    required String texto,
  }) : super(key: key, texto: texto, cor: Colors.black, bg: Colors.blueAccent);
}

class BotaoRedondoAmarelo extends BotaoRedondoBase {
  const BotaoRedondoAmarelo({
    Key? key,
    required String texto,
  }) : super(
            key: key, texto: texto, cor: Colors.black, bg: Colors.yellowAccent);
}

class BotaoIconeBase extends StatelessWidget {
  final String texto;
  final Color cor;
  final Icon icone;

  const BotaoIconeBase({
    Key? key,
    required this.texto,
    required this.cor,
    required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: icone,
      onPressed: () => {
        ScaffoldMessenger.of(context).clearSnackBars(),
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Clicou no ' + texto.toString(),
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
        ),
      },
      label: Text(
        texto,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: cor,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

class BotaoIconeAlerta extends BotaoIconeBase {
  const BotaoIconeAlerta({
    Key? key,
    required texto,
  }) : super(
          key: key,
          texto: texto,
          cor: Colors.amber,
          icone: const Icon(
            Icons.warning,
            color: Colors.redAccent,
          ),
        );
}

class BotaoIconeAprovado extends BotaoIconeBase {
  const BotaoIconeAprovado({
    Key? key,
    required texto,
  }) : super(
            key: key,
            texto: texto,
            cor: Colors.black,
            icone: const Icon(
              Icons.check,
              color: Colors.greenAccent,
            ));
}
