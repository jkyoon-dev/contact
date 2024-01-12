import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('hi'),
      // home: Icon(Icons.abc),
      // home: Image.asset('assets/star.jpg'),
      // Container 기본은 투명박스
      // 상중하
      home: Scaffold(
        appBar: AppBar(
          title: Text("앱임"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: 500,
          height: 500,
          color: Colors.blue,
          margin: EdgeInsets.all(10),
          child: SizedBox(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text("하이"), Icon(Icons.star), Icon(Icons.star)],
              ),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page),
            ],
          ),
        ),
      ),
    );
  }
}
