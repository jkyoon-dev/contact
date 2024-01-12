import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
              ),
            ),
            Flexible(
                child: Container(
                  color: Colors.blue,
                ),
                flex: 7),
          ],
        ),
      ),
    );
  }
}
