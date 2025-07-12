import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual o seu animal favorito?',
        'respostas': ['Coellho', 'Cobra', 'Elefante', 'Leao'],
      },
      {
        'texto': 'Qual o seu instrutor favorito?',
        'respostas': ['Maria', 'Joao', 'Leo', 'Pedro'],
      },
    ];
    final List<Widget> respostas =
        (perguntas.elementAt(_perguntaSelecionada)['respostas'] as List<String>)
            .map((item) => Resposta(item, _responder))
            .toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: [
            Questao(
              perguntas.elementAt(_perguntaSelecionada)['texto'] as String,
            ),
            ...respostas,
          ],
        ),
      ),
    );
  }

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Pergunta respondida');
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
