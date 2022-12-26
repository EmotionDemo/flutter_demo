import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/tabs.dart';

void main() => runApp(MyPage());

class MyPage extends StatelessWidget {
  MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "app",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: BottomNavClickView());
  }
}
