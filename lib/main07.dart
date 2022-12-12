import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("app"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: const Text(
            '豆本豆豆奶',
            style: TextStyle(color: Colors.black),
          ),
          subtitle:
              const Text('中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶'),
          trailing: Image.network(
              "https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
          // leading: Image.network("https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
        ),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
            '豆本豆豆奶',
            style: TextStyle(color: Colors.black),
          ),
          subtitle:
              const Text('中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶'),
          trailing: Image.network(
              "https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
          // leading: Image.network("https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
        ),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
            '豆本豆豆奶',
            style: TextStyle(color: Colors.black),
          ),
          subtitle:
              const Text('中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶'),
          trailing: Image.network(
              "https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
          // leading: Image.network("https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
        ),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
            '豆本豆豆奶',
            style: TextStyle(color: Colors.black),
          ),
          subtitle:
              const Text('中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶'),
          trailing: Image.network(
              "https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
        ),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
            '豆本豆豆奶',
            style: TextStyle(color: Colors.black),
          ),
          subtitle:
              const Text('中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶'),
          trailing: Image.network(
              "https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
        ),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text(
            '豆本豆豆奶',
            style: TextStyle(color: Colors.black),
          ),
          subtitle:
              const Text('中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶，中国好豆奶'),
          trailing: Image.network(
              "https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
          // leading: Image.network("https://img14.360buyimg.com/n0/jfs/t1/186829/3/31346/144260/6387f797Ea77b5227/66db04ea099a3f62.jpg"),
        ),
        const Divider(),
      ],
    );
  }
}
