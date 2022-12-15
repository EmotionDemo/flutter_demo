import 'package:flutter/material.dart';
import 'package:flutter_demo/list.dart';

void main() {
  runApp(const MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("app"),
        ),
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  MyHome({Key key}) : super(key: key);
  var salef =
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi2.hdslb.com%2Fbfs%2Farchive%2Fbd3d78bb7827eb1c15b60cde6745b61a6f0d84a1.jpg&refer=http%3A%2F%2Fi2.hdslb.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1673677826&t=edf9b521f6e9113d4d318e49b969d2d3";
  var salefDes =
      "萨勒芬妮一般指星籁歌姬。 星籁歌姬·萨勒芬妮，是MOBA竞技网游《英雄联盟》中第152位登场的英雄角色，定位为法师，于10.22版本登场。萨勒芬妮为音乐而生。";
  var yflImg =
      "https://img1.baidu.com/it/u=3521849096,3337810314&fm=253&fmt=auto&app=120&f=JPEG?w=901&h=500";
  var yflDesc =
      "痛苦之拥·伊芙琳，是MOBA竞技网游《英雄联盟》中的英雄角色，定位为刺客、法师。伊芙琳原称号为“寡妇制造者”，7.20版本更新后更名为“痛苦之拥”。恶魔伊芙琳诱捕猎物的方式是凭借一个美丽的谎言：人类女子的撩人美色。";

  List<Widget> _getLolHeroes() {
    var resultList = dataJson.map((value) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(5),
        elevation: 10,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(value["imageUrl"], fit: BoxFit.cover),
            ),
            ListTile(
              leading: ClipOval(
                  child: Image.network(
                    value["imageUrl"],
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  )),
              title: Text(value["title"]),
              subtitle: Text(value["author"]),
            ),
          ],
        ),
      );
    });
    return resultList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getLolHeroes(),
    );
  }
}
