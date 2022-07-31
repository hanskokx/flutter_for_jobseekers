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
        body: Container(
          color: Colors.grey[300],
          width: 105,
          height: 105,
          child: const Text(
            "Your text will automatically wrap to the next line, but what happens if it overflows its parent?",
            overflow: TextOverflow.fade,
          ),
        ),
      ),
    );
  }
}
