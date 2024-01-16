import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total = 3;
  var name = [];
  var like = [0, 0, 0];
// context 부모 위젯의 정보를 담고있는 변수 (족보) -> MaterialApp, MyApp
// builder 족보 생성기
  @override
  build(context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('부모영역$context');
          showDialog(
            context: context,
            builder: (context) {
              // state 보내기 => 작명 : 보낼state
              return DialogUI();
            },
          );
        },
      ),
      appBar: AppBar(
        title: Text('앱제목'),
      ),
      body: ShopItem(),
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

// 커스텀위젯
class DialogUI extends StatelessWidget {
  // const DialogUI({super.key});
  // 부모가 보낸 state는 read-only
  // 1. state 보내고 2. state 등록 3. 사용
  const DialogUI({super.key, this.state});
  final state;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(
              onPressed: () {},
              child: Text(state.toString()),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('취소'),
            ),
          ],
        ),
      ),
    );
  }
}
