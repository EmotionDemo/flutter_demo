import 'package:flutter/material.dart';

import './customIcon.dart';

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
      children: const <Widget>[
        // Text(
        //   'hello 1',
        //   style: TextStyle(color: Colors.blue),
        // )
        ListTile(title: Text('我是一个列表'),),
        Divider(),ListTile(title: Text('我是一个列表'),),
        Divider(),ListTile(title: Text('我是一个列表'),),
        Divider(),ListTile(title: Text('我是一个列表'),),
        Divider(),ListTile(title: Text('我是一个列表'),),
        Divider(),ListTile(title: Text('我是一个列表'),),

        Divider(), ListTile(
          title: Text('我是一个列表'),
        ),
        Divider(),
        SizedBox(
          height: 20,
        ),
        Icon(
          Icons.home,
          size: 20,
          color: Colors.red,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          Icons.access_alarms,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          Icons.settings,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          Icons.person,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.bookIcon,
          size: 20,
          color: Colors.red,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.eatIcon,
          size: 20,
          color: Colors.yellow,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.wxIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.busIcon,
          size: 20,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.iphoneIcon,
          size: 20,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          CustomIcon.androidIcon,
          size: 20,
          color: Colors.green,
        ),
      ],
    );
  }
}
