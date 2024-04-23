import 'package:dicee_flutter/dice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.red[900],
          backgroundColor: Colors.red,
          title: const Text(
            "Dicee",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 4,
        ),
        backgroundColor: Colors.red,
        body: const Dicee(),
      ),
    );
  }
}
