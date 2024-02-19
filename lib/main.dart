import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
          backgroundColor: Colors.red
        ),
        body: Container(
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
            child: Text(
              'Boo ya!',
              style: TextStyle(
                fontSize: 28,
                color: Colors.amber
              )
            )
          ),
        )
      )
    )
  );
}
