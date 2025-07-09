import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
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
            Text(perguntas.elementAt(0)),
            ElevatedButton(onPressed: null, child: Text('Resposta 1')),
            ElevatedButton(onPressed: null, child: Text('Resposta 2')),
            ElevatedButton(onPressed: null, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}
