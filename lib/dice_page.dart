import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  dynamic randomDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: ElevatedButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: randomDice,
          )),
          Expanded(
              child: ElevatedButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: randomDice,
          )),
        ],
      ),
    );
  }
}
