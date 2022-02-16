import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Container"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(20),
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
