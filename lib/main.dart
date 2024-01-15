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
          title: Text('앱제목'),
        ),
        body: ShopItem(),
        bottomNavigationBar: ButtomNavi(),
      ),
    );
  }
}

// 변수랑 함수 담는 통 완성된 위젯 플래폼을 오른쪽에 ShopItem으로 복사
class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  build(BuildContext context) {
    return ListView(children: [
      ListTile(
        leading: Image.asset('assets/star.jpg'),
        title: Text('홍길동'),
      ),
      ListTile(
        leading: Image.asset('assets/star.jpg'),
        title: Text('홍길동'),
      ),
      ListTile(
        leading: Image.asset('assets/star.jpg'),
        title: Text('홍길동'),
      ),
    ]);
  }
}

class ButtomNavi extends StatelessWidget {
  const ButtomNavi({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.call),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.message),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.contact_page_rounded),
        ),
      ],
    );
  }
}
