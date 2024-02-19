import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
          backgroundColor: Colors.red
        ),
        body: const GradientContainer()
      )
    )
  );
}
