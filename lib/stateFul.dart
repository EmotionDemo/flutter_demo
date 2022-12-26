import 'package:flutter/material.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<String> _list = [];
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "动态控件",
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("动态组件"),
          ),
          body: ListView(
              children: _list.map((e) {
                return ListTile(
                title: Text(e),);
              }).toList()
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            countNum++;
            _list.add('产品$countNum');
          });
        },
      ),
    ),);
  }
}
