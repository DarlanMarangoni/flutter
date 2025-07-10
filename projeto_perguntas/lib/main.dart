import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: [
            Questao(perguntas.elementAt(_perguntaSelecionada)),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 1')),
            ElevatedButton(
              onPressed: _PerguntaAppState.new,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 3')),
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
