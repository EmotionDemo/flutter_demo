import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('hello flutter')),
          body: const MyApp()),
    ),
  );
}


//静态组件，无状态改变的
/*class MyApp extends StatelessWidget{
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return const Center(
        child: Text('你好Flutter5555',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.red, fontSize: 35)),
      );
  }

}*/


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('豆本豆豆奶',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.red, fontSize: 35)),
    );
  }
}

