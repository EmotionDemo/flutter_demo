import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('app'),
        ),
        body: const MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
            child: Column(
          children: [
            /* InkWell(
               child:
            Image.network("https://img1.baidu.com/it/u=1149172349,824709524&fm=253&fmt=auto&app=120&f=JPEG?w=1524&h=800"),
             ),*/

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              color: Colors.yellow,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      "王志宾",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    subtitle: Text(
                      "2022年王者荣耀世界杯MVP",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("微信ID：wxyyzn2003"),
                    subtitle: Text("2022冠军打野"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              color: Colors.blue,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      "孙广凯",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    subtitle: Text(
                      "2022年王者荣耀世界杯MVP",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("微信ID：sgk-kaikai"),
                    subtitle: Text("2022冠军中单"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              color: Colors.green,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: const [
                  ListTile(
                    title: Text(
                      "李丰华",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    subtitle: Text(
                      "2022年王者荣耀世界杯MVP",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("微信ID：明月来相照"),
                    subtitle: Text("2022冠军ADC"),
                  )
                ],
              ),
            ),
          ],
        )),
      ],
    );
  }
}
