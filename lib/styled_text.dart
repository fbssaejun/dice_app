import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Hello, World!',
      style: TextStyle(
        fontSize: 48,
        color: Colors.white
      )
    );
  }
}
