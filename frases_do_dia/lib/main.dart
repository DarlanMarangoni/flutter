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
        padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text("t1"),
            Padding(padding: EdgeInsets.all(30), child: Text("t2")),
            Text("t3"),
          ],
        ),
      ),
    );
  }
}
