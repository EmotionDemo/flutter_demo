import 'package:flutter/material.dart';
import 'package:flutter_demo/main10.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("app"),
        ),
        body: const HomePage(),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 3/1,
      child: Container(
       color: Colors.red,
      ),
    );
  }
}

