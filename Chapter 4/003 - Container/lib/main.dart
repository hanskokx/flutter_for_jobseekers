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
          width: 100,
          height: 100,
          margin: const EdgeInsets.only(
            top: 20,
            left: 100,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[50],
          ),
          padding: const EdgeInsets.all(30.0),
          foregroundDecoration: BoxDecoration(
            border: Border.all(
              width: 5,
              color: Colors.grey,
              style: BorderStyle.solid,
            ),
            gradient: const RadialGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.black,
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
