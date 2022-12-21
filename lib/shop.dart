import 'package:flutter/material.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'app',
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: Scaffold(
          appBar: AppBar(title: const Text("flutter app")),
          body: Layout(),
        ));
  }
}

class Layout extends StatelessWidget {
  const Layout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text(
              '热搜',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            )
          ],
        ),
        const Divider(),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            WrapButton(title: "手机", onPressed: () {}),
            WrapButton(title: "电脑", onPressed: () {}),
            WrapButton(title: "服装", onPressed: () {}),
            WrapButton(title: "键盘", onPressed: () {}),
            WrapButton(title: "鼠标", onPressed: () {}),
            WrapButton(title: "玩具笔记本电脑", onPressed: () {}),
            WrapButton(title: "药品", onPressed: () {}),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              '历史记录',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            )
          ],
        ),
        const Divider(),
        Column(
          children: const [
            ListTile(title: Text('数码专区')),
            Divider(),
            ListTile(title: Text('手机')),
            Divider(),
            ListTile(title: Text('电脑'),)
          ],
        ),
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(onPressed: () {},
                icon: const Icon(Icons.delete),
                label: const Text('清空历史记录'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  alignment: Alignment.bottomCenter,
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.blue),
                )
            )
          ],
        ),
      ],
    );
  }
}

class WrapButton extends StatelessWidget {
  void Function() onPressed;
  String title = "";

  WrapButton({Key key, @required this.title, @required this.onPressed})
      : super(key: key);

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
