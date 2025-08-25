import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> respostas = temPerguntaSelecionada
        ? (perguntas.elementAt(perguntaSelecionada)['respostas']
                  as List<Map<String, Object>>)
              .map(
                (item) => Resposta(
                  item['texto'] as String,
                  () => quandoResponder(item['pontuacao'] as int),
                ),
              )
              .toList()
        : [];

    return Column(
      children: [
        Questao(perguntas.elementAt(perguntaSelecionada)['texto'] as String),
        ...respostas,
      ],
    );
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
}
