import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startAlignment, this.endAlignment, {super.key, required this.colors});

  const GradientContainer.red({super.key})
    : startAlignment = Alignment.centerLeft,
      endAlignment = Alignment.centerRight,
      colors = const [
        Colors.red,
        Colors.pink
      ];

  final List<Color> colors;
  final Alignment startAlignment;
  final Alignment endAlignment;

  void rollDice() {

  }

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: colors
            )
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice-1.png',
                  width: 250
                ),
                TextButton(
                    onPressed: rollDice,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(top: 20),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 28)),
                    child: const Text('Roll Dice')
                  )
              ]
            )
          ),
        );
  }
}
