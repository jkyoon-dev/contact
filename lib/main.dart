import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var a = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
            print(a);
            a++;
          },
        ),
        appBar: AppBar(
          title: Text('앱제목'),
        ),
        body: ShopItem(),
        bottomNavigationBar: ButtomNavi(),
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Text('홍길동 $index');
      },
    );
  }
}

class ButtomNavi extends StatelessWidget {
  const ButtomNavi({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset('assets/star.jpg'),
          title: Text('홍길동 $index'),
        );
      },
    );
  }
}
