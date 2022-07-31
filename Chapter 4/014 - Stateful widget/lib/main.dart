import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
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
      home: const Scaffold(body: ExampleWidget()),
    );
  }
}

class _ExampleWidgetState extends State<ExampleWidget> {
  bool alwaysFalse = true;

  @override
  Widget build(BuildContext context) {
    return Text('$alwaysFalse');
  }

  @override
  void initState() {
    super.initState();
    _resolveFutures();
  }

  Future<bool> _futureFalse() async {
    return Future.delayed(const Duration(seconds: 1), () {
      return false;
    });
  }

  void _resolveFutures() async {
    alwaysFalse = await _futureFalse();
    setState(() {});
  }
}
