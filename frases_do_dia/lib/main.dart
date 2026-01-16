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
      home: Container(
        margin: EdgeInsets.only(top: 80),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset("images/mesa.jpg", fit: BoxFit.contain),
      ),
    );
  }
}
