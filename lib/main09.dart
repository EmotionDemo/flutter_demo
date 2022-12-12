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
        body: MyPage(),
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
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: const [
        Icon(Icons.home),
        Icon(Icons.favorite),
        Icon(Icons.save),
        Icon(Icons.shop_2),
        Icon(Icons.padding_rounded),
        Icon(Icons.payment),
        Icon(Icons.add),
        Icon(Icons.home),
        Icon(Icons.favorite),
        Icon(Icons.save),
        Icon(Icons.shop_2),
        Icon(Icons.padding_rounded),
        Icon(Icons.payment),
        Icon(Icons.add),
      ],
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  MyHomePage2({Key key}) : super(key: key);

  List<Widget> _initGridViewData() {
    var dataList = dataJson.map((value) {
      return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var title = '标题';
    Widget icon = Icon(Icons.add_a_photo_sharp);
    return GridView.extent(
      maxCrossAxisExtent: 80.0,
      children: [
        InkWell(
          child: Text(title),
          onTap: () {
            print(title);
            setState() {
              title = '222222';
              print(title);
            }

            ;
            print("11121");
          },
          // onTap:
        ),
        Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        Icon(Icons.save),
        Icon(Icons.shop_2),
        Icon(Icons.padding_rounded),
        Icon(Icons.payment),
        Icon(Icons.add),
        Icon(Icons.home),
        Icon(Icons.favorite),
        Icon(Icons.save),
        Icon(Icons.shop_2),
        Icon(Icons.padding_rounded),
        Icon(Icons.payment),
        Icon(Icons.add),
      ],
    );
  }
}

class MyHomePage3 extends StatelessWidget {
  MyHomePage3({Key key}) : super(key: key);

  List<Widget> _initGridViewData() {
    var dataList = dataJson.map((value) {
      return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var title = '标题';
    var isOk = 1;
    Widget icon = Icon(Icons.add_a_photo_sharp);
    return GridView.extent(
      maxCrossAxisExtent: 80.0,
      children: [
        InkWell(
          child: Text(title),
          onTap: () {
            print(title);
            setState() {
              title = '222222';
              print(title);
            }

            ;
            print("11121");
          },
          // onTap:
        ),
        Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        Icon(Icons.save),
        Icon(Icons.shop_2),
        Icon(Icons.padding_rounded),
        Icon(Icons.payment),
        Icon(Icons.add),
        Icon(Icons.home),
        Icon(Icons.favorite),
        Icon(Icons.save),
        Icon(Icons.shop_2),
        Icon(Icons.padding_rounded),
        Icon(Icons.payment),
        Icon(Icons.add),
      ],
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({
    Key key,
  }) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var title = '标题';
  var color1 = Colors.red;
  var isOK = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 80.0,
      children: [
        InkWell(
          // child: Text(title),
          child: Icon(
            Icons.add_a_photo_sharp,
            color: color1,
          ),
          onTap: () {
            setState(() {
              if (isOK == 0) {
                color1 = Colors.blue;
                isOK = 1;
              } else {
                isOK = 0;
                color1 = Colors.red;
              }
              title = '22nnnnnn2222';
              print(title);
            });
            title = '222222';
            print("11121aaaaaaaaa");
          },
          // onTap:
        ),
        const InkWell(
         child: Icon(
           Icons.favorite,
           color: Colors.red,
         ),
        ),

        Icon(Icons.save),
        Icon(Icons.shop_2),
        Icon(Icons.padding_rounded),
        Icon(Icons.payment),
        Icon(Icons.add),
        Icon(Icons.home),
        Icon(Icons.favorite),
        Icon(Icons.save),
        Icon(Icons.shop_2),
        Icon(Icons.padding_rounded),
        Icon(Icons.payment),
        Icon(Icons.add),
      ],
    );
  }
}
