import 'package:flutter/material.dart';

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
    _tabController = TabController(length: 3, vsync: this);
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
                controller: _tabController,
                indicatorColor: Colors.red,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.red,
                tabs: const [
                  Tab(
                    child: Text('消息',),
                  ),
                  Tab(
                    child: Text('关注',),
                  ),
                  Tab(
                    child: Text('热门',),
                  ),
                ],
              ),
            )
          )),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('消息'),
          Text('关注'),
          Text('热门'),
        ],
      ),
    );
  }
}
