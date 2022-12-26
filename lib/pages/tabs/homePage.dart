import 'package:flutter/material.dart';
import 'package:flutter_demo/tools/KeepAliveWrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 8, vsync: this);

    _tabController.addListener(() {
      if (_tabController.animation.value == _tabController.index) {
        print('---${_tabController.index}');
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
              elevation: 5,
              backgroundColor: Colors.white,
              title: SizedBox(
                height: 30,
                child: TabBar(
                  labelStyle: const TextStyle(fontSize: 16),
                  isScrollable: true,
                  controller: _tabController,
                  indicatorColor: Colors.red,
                  onTap: (value) {
                    print('aaaa---$value');
                  },
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.red,
                  tabs: const [
                    Tab(
                      child: Text(
                        '消息',
                      ),
                    ),
                    Tab(
                      child: Text(
                        '关注',
                      ),
                    ),
                    Tab(
                      child: Text(
                        '热门',
                      ),
                    ),
                    Tab(
                      child: Text(
                        '飞行',
                      ),
                    ),
                    Tab(
                      child: Text(
                        '降落',
                      ),
                    ),
                    Tab(
                      child: Text(
                        '大疆',
                      ),
                    ),
                    Tab(
                      child: Text(
                        '全景',
                      ),
                    ),
                    Tab(
                      child: Text(
                        '视频',
                      ),
                    ),
                  ],
                ),
              ))),
      body: TabBarView(
        controller: _tabController,
        children: [
          KeepAliveWrapper(
            keepAlive: true,
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机f'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机e'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机d'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机c'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机b'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机a'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                      "https://x0.ifengimg.com/res/2021/7192CF00F40F36F13BB29A21AF6B804B554575FB_size1212_w1880_h899.png"),
                  title: const Text('大疆无人机5'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                    "https://x0.ifengimg.com/res/2022/800DCE51DAEF41D0E2D7E804674BD478B9103E6A_size2164_w3000_h1688.jpeg",
                    fit: BoxFit.cover,
                  ),
                  title: const Text('大疆无人机2'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Container(
                    child: Image.network(
                      "https://img2.baidu.com/it/u=3617410960,3271408206&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500",
                    ),
                  ),
                  title: const Text('大疆无人机1'),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.network(
                    "https://img0.baidu.com/it/u=968065518,3530025241&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500",
                    fit: BoxFit.cover,
                  ),
                  title: const Text('大疆无人机233'),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
          Text('关注'),
          Text('热门'),
          Text('飞行'),
          Text('降落'),
          Text('大疆'),
          Text('全景'),
          Text('视频'),
        ],
      ),
    );
  }
}
