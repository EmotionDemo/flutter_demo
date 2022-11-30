import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: const Text("你好，Flutter",
              style: TextStyle(color: Colors.red, fontSize: 32))),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //配置container内容器内元素的方位
        alignment: Alignment.center,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.yellow, width: 5),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 10.0)],
            gradient:
                const LinearGradient(colors: [Colors.red, Colors.yellow])),
        child: const Text(
          "hello,flutter",
          style: TextStyle(color: Colors.blue, fontSize: 22),
        ),
      ),
    );
  }
}
