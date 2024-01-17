import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainScreen()));
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var total = 0;
  final name = ['종경', '종경2', '종경3'];
  void totalCount() {
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          totalCount();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('캘린더'),
      ),
      body: ContactList(totalCount: totalCount),
    );
  }
}

// 연락처리스트
class ContactList extends StatefulWidget {
  const ContactList({super.key, this.totalCount});
  final totalCount;
  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Text(widget.totalCount());
      },
    );
  }
}
