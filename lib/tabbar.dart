import 'package:flutter/material.dart';

main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeState(),
    );
  }
}

class HomeState extends StatefulWidget {
  const HomeState({Key key}) : super(key: key);

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('apps2'),
        actions: [
          IconButton(
              onPressed: () {
                print('aaa');
              },
              icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            print('豆本豆豆奶');
          },
        ),
        backgroundColor: Colors.red,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          indicatorPadding: const EdgeInsets.all(5),
          indicator: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10)
          ),
          labelStyle: const TextStyle(
            fontSize: 18
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 14
          ),
          // indicatorSize: TabBarIndicatorSize.label,
          tabs: const [
            Tab(
              child: Text('热门'),
            ),
            Tab(
              child: Text('视频'),
            ),
            Tab(
              child: Text('钱包'),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text('热门列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('视频列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('钱包列表'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
