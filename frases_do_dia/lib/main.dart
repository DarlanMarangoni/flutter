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
        padding: EdgeInsets.all(100),
        color: Colors.white,
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                print("Botão pressionado");
              },
              child: Text(
                "Botão",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
