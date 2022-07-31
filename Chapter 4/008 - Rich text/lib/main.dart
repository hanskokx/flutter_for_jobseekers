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
      home: const Scaffold(
        body: Text.rich(
          TextSpan(
            text: 'Flutter',
            children: <TextSpan>[
              TextSpan(
                text: ' is ',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: 'fun!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
