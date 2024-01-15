import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱제목'),
        ),
        body: ShopItem(),
      ),
    );
  }
}

class ShopItem extends StatefulWidget {
  const ShopItem({super.key});

  @override
  State<ShopItem> createState() => _ShopItemState();
}

class _ShopItemState extends State<ShopItem> {
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  @override
  build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text("${name[index]} ${like[index]}"),
          trailing: IconButton(
            onPressed: () {
              setState(() {
                like[index]++;
              });
            },
            icon: Icon(Icons.plus_one),
          ),
        );
      },
    );
  }
}
