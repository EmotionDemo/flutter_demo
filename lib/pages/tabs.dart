import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/tabs/homePage.dart';
import 'package:flutter_demo/pages/tabs/lovePage.dart';
import 'package:flutter_demo/pages/tabs/messagePage.dart';
import 'package:flutter_demo/pages/tabs/musicPage.dart';
import 'package:flutter_demo/pages/tabs/publishPage.dart';

class BottomNavClickView extends StatefulWidget {
  BottomNavClickView({Key key}) : super(key: key);

  @override
  State<BottomNavClickView> createState() => _BottomNavClickViewState();
}

class _BottomNavClickViewState extends State<BottomNavClickView> {
  List<BottomNavigationBarItem> bottoms = const [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: "主页"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.music_note,
        ),
        label: "音乐"),
    BottomNavigationBarItem(icon: Icon(null), label: "发布"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
        ),
        label: "收藏"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.markunread_rounded,
        ),
        label: "信息",
        backgroundColor: Colors.black),
  ];

  final List<Widget> _pages = const [
    HomePage(),
    MusicPage(),
    PublishPage(),
    LovePage(),
    MessagePage()
  ];
  int _index = 0;
  Color _colorBg = Colors.white;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //初始化底部栏的显示
    if (_index != 2) {
      _colorBg = Colors.blueGrey;
    } else {
      _colorBg = Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('BottomNavigation'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children:  [
                Expanded(
                  flex: 1,
                  child: UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://stormsend1.djicdn.com/tpc/uploads/core_selling_point/image/6692a9071a54f78d41c9553d493e78bb@origin.jpg"),
                            fit: BoxFit.cover)),
                    accountName: const Text(
                      '王志宾',
                      style: TextStyle(
                          color: Colors.white, fontSize: 17, height: 0),
                    ),
                    accountEmail: const Text(
                      '123912321@qq.com',
                      style: TextStyle(
                          color: Colors.white, fontSize: 22, height: 0),
                    ),
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: NetworkImage("https://bkimg.cdn.bcebos.com/pic/8718367adab44aed2e73200bf8489001a18b86d64d9d?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5"),
                    ),
                    otherAccountsPictures: [
                      Image.network("https://bkimg.cdn.bcebos.com/pic/267f9e2f070828381f305cfbf3cdbe014c086f065b9d?x-bce-process=image/resize,m_lfit,w_4096,limit_1/watermark,image_d2F0ZXIvYmFpa2UyNzI=,g_7,xp_5,yp_5"),
                      Image.network("https://bkimg.cdn.bcebos.com/pic/267f9e2f070828381f305cfbf3cdbe014c086f065b9d?x-bce-process=image/resize,m_lfit,w_4096,limit_1/watermark,image_d2F0ZXIvYmFpa2UyNzI=,g_7,xp_5,yp_5"),
                      Image.network("https://bkimg.cdn.bcebos.com/pic/267f9e2f070828381f305cfbf3cdbe014c086f065b9d?x-bce-process=image/resize,m_lfit,w_4096,limit_1/watermark,image_d2F0ZXIvYmFpa2UyNzI=,g_7,xp_5,yp_5"),
                    ],
                  ),
                )
              ],
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                child: Icon(
                  Icons.person,
                  size: 22,
                ),
              ),
              title: Text('个人中心'),
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                child: Icon(
                  Icons.settings,
                  size: 22,
                ),
              ),
              title: Text('系统设置'),
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                radius: 15,
                child: Icon(
                  Icons.piano,
                  size: 22,
                ),
              ),
              title: Text('清理缓存'),
            ),
            const Divider(),
          ],
        ),
      ),

      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        iconSize: 25,
        elevation: 30.0,
        fixedColor: Colors.blue,
        onTap: (position) {
          setState(() {
            _index = position;
            if (position != 2) {
              _colorBg = Colors.blueGrey;
            } else {
              _colorBg = Colors.blue;
            }
          });
          print('position->$position');
        },
        items: bottoms,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(30)),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _colorBg = Colors.blue;
                _index = 2;
              });
            },
            backgroundColor:   _colorBg,
            child: const Icon(
              Icons.publish,
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
