import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() fn;

  Resposta(this.texto, this.fn);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: fn, child: Text(texto));
  }
}
