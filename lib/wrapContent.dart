import 'package:flutter/material.dart';

void main() {
  runApp(const MyPage());
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
          title: const Text("Wrap Content"),
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
    return Padding(
      padding: EdgeInsets.all(10),
      child: Wrap(
        //水平间距
        spacing: 5,
        //垂直间距
        runSpacing: 5,
        // direction: Axis.horizontal,
        // alignment: WrapAlignment.spaceAround,
        children: [
          MyButton("第1季", onPressed: () {}),
          MyButton("第2季", onPressed: () {}),
          MyButton("第3季", onPressed: () {}),
          MyButton("第4季", onPressed: () {}),
          MyButton("第5季", onPressed: () {}),
          MyButton("第6季", onPressed: () {}),
          MyButton("第7季", onPressed: () {}),
          MyButton("第8季", onPressed: () {}),
          MyButton("第9季", onPressed: () {}),
          MyButton("第10季", onPressed: () {}),
          MyButton("第11季[完结]", onPressed: () {}),
          MyButton("第12季", onPressed: () {}),
          MyButton("第13季", onPressed: () {}),
          MyButton("第14季", onPressed: () {}),
          MyButton("第15季", onPressed: () {}),
          MyButton("第16季", onPressed: () {}),
          MyButton("第17季", onPressed: () {}),
          MyButton("第18季", onPressed: () {}),
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget {
  var title;
  void Function() onPressed;

  MyButton(this.title, {Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
