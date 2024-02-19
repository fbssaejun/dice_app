import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red
              ]
            )
          ),
          child: const Center(
            child: StyledText()
          ),
        );
  }
}
