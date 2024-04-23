import 'dart:math';

import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    leftDiceNum = Random().nextInt(6) + 1;
                    rightDiceNum = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$leftDiceNum.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    rightDiceNum = Random().nextInt(6) + 1;
                    leftDiceNum = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$rightDiceNum.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
