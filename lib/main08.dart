import 'package:flutter/material.dart';
import 'package:flutter_demo/list.dart';

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
        body:  MyHomePage(),
      ),
    );
  }
}

class LolHeroPage extends StatelessWidget {
  const LolHeroPage({Key key}) : super(key: key);

  List<Widget> _getHeroList() {
    List<Widget> heroList = [];
    for (var i = 0; i < dataJson.length; i++) {
      heroList.add(ListTile(
        leading: Image.network(dataJson[i]["imageUrl"]),
        title: Text(dataJson[i]["title"]),
        subtitle: Text(dataJson[i]["author"]),
      ));
    }

    return heroList;
  }

  List<Widget> _getHeroListByMap() {
    var heroList = dataJson.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    return heroList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getHeroListByMap(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> list=[];

  MyHomePage({Key key}) : super(key: key) {
    for (var i = 0; i < 20; i++) {
      list.add("我是第 $i 条数据");
    }
  }


  /* List<Widget> _getWidgetDataList() {
    List<Widget> list = [];
    for (int i = 0; i < 20; i++) {
      list.add(ListTile(
          title: Text("虚空恐惧-科加斯-$i",
              style: const TextStyle(color: Colors.blue, fontSize: 22))));
    }
    return list;
  }*/

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataJson.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(dataJson[index]["title"]),
          subtitle: Text(dataJson[index]["author"]),
          leading: Image.network(dataJson[index]["imageUrl"]),
        );
      },
    );
  }
}
