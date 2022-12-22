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
    BottomNavigationBarItem(
        icon: Icon(
          null
        ),
        label: "发布"),
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
  Color _colorBg = Colors.black12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigation'),
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
            if(position != 2){
              _colorBg = Colors.black12;
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
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30)
        ),
        child:FloatingActionButton(
        onPressed: () {
          setState(() {
            _colorBg = Colors.yellow;
            _index = 2;
          });
        },
        child:   Icon(Icons.publish,color: _colorBg,),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
