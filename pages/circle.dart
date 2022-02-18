import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular Container"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(100)
              //more than 50% of width makes circle
              ),
        ),
      ),
    );
  }
}
