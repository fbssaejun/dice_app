import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNumber = 1;

void rollDice() {
  setState(() {
    currentDiceNumber = randomizer.nextInt(6) + 1;
  });
}

  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice-$currentDiceNumber.png',
                  width: 250
                ),
                TextButton(
                    onPressed: rollDice,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 28)),
                    child: const Text('Roll Dice')
                  )
              ]
            );
  }
}
