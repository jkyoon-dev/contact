import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.star),
          title: Text("앱임"),
          actions: [],
        ),
        body: Column(
          children: [
            SizedBox(
              child: Text(
                '안녕하세요',
                style: TextStyle(
                    color: Color(0xff333333),
                    letterSpacing: 2,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              child: TextButton(
                child: Text('글쨔'),
                onPressed: () {},
                style: ButtonStyle(),
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                child: Text('글쨔'),
                onPressed: () {},
                style: ButtonStyle(),
              ),
            ),
            SizedBox(
              child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
