import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: [
                Colors.blue,
                Colors.red
              ]
            )
          ),
          child: const Center(
            child: StyledText('Hello World!')
          ),
        );
  }
}
