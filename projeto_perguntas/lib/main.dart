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
    List<Widget> respostas = [];
    for (var item
        in perguntas.elementAt(_perguntaSelecionada)['respostas']
            as List<String>) {
      respostas.add(Resposta(item, _responder));
    }

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
