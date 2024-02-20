import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

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
          child: const Center(
            child: DiceRoller()
          ),
        );
  }
}
