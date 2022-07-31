import 'dart:ui' as ui;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Text(
          'Fancy text',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 3
              ..shader = ui.Gradient.linear(
                const Offset(0, 20),
                const Offset(300, 20),
                <Color>[
                  Colors.blue,
                  Colors.red,
                ],
              ),
          ),
        ),
      ),
    );
  }
}
