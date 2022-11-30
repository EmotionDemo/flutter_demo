import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: const Text("你好，王志宾",
              style: TextStyle(color: Colors.white, fontSize: 16))),
      body: Column(
        children: const [MyApp(), MyButton(), MyText()],
      ),
      // body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        //配置container内容器内元素的方位
        alignment: Alignment.center,
        width: 200,
        height: 200,
        //位移
        //transform: Matrix4.translationValues(0, -21, 0),

        //旋转
        // transform: Matrix4.rotationZ(0.1),

        transform: Matrix4.skewY(.1),
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.yellow, width: 5),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 10.0)],
            gradient:
                const RadialGradient(colors: [Colors.red, Colors.yellow])),
        child: const Text(
          "hello,王志宾",
          style: TextStyle(color: Colors.blue, fontSize: 22),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      width: 200,
      height: 40,
      // margin: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        '王志宾666',
        style: TextStyle(
            color: Colors.white, fontStyle: FontStyle.italic, fontSize: 17),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      width: 200,
      height: 200,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Text(
        "我是王志宾我是王志宾我是王志宾我是王志宾",
        textAlign: TextAlign.center,maxLines: 1,
        //溢出显示点...
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 22,
          fontWeight:FontWeight.w500,
          color: Colors.black,
          letterSpacing: 2,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.dashed
        ),
      ),
    );
  }
}
