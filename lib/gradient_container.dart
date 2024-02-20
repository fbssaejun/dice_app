import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startAlignment, this.endAlignment, {super.key, required this.colors});

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
            child: StyledText('Hello World!')
          ),
        );
  }
}
