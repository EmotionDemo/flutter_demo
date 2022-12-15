import 'package:flutter/material.dart';

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
          title: const Text("flutter Demo"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  _count++;
                  print('value=$_count');
                },
                child: const Text('button',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ))),
            TextButton(
                onPressed: () {
                  _count++;
                  print('button pressed');
                },
                child: Text("文本按钮")),
            OutlinedButton(onPressed: () {}, child: const Text('带边框的按钮')),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_a_photo_sharp))
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.send),
                label: const Text("发送")),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.send),
                label: const Text("发送"))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("button"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                foregroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "相机按钮思密达",
                  style: TextStyle(fontSize: 17),
                ),
                icon: Icon(Icons.add_a_photo_sharp),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  height: 40,
                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text("登录"),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                margin: const EdgeInsets.all(30),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  label: const Text('爱心发射！ biu~ biu~ biu~'),
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Colors.blue),
                      foregroundColor: const MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
