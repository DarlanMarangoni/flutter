import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Frases do Dia",
      home: Row(children: [Text("Texto 1"), Text(" Texto 2")]),
    );
  }
}
