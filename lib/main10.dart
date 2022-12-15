import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("app"),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*return const Padding(
      padding: EdgeInsets.all(20),
      child: Text("flutter app"),
    );*/
    // return IconContainer(Icons.home,color: Colors.red ,);
    /* return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconContainer(
            Icons.home,
            colorBg: Colors.blue,
            colorIcon: Colors.yellow,
          ),
          IconContainer(Icons.search,colorBg:Colors.yellow,colorIcon: Colors.red,),
          IconContainer(
            Icons.verified_user,
            colorBg: Colors.blue,
            colorIcon: Colors.white,
          ),
        ],
      ),
    );*/

    /*return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconContainer(Icons.home,colorBg: Colors.blue, colorIcon: Colors.yellow,),
          // IconContainer(Icons.search,colorBg:Colors.yellow,colorIcon: Colors.red,),
          IconContainer(Icons.verified_user,colorBg: Colors.blue,colorIcon: Colors.white,),
        ],
      ),
    );*/

    /*return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home,
              colorBg: Colors.blue, colorIcon: Colors.yellow),
        ),
        */ /*Expanded(
          flex: 2,
          child: IconContainer(
            Icons.verified_user,
            colorBg: Colors.green,
            colorIcon: Colors.white,
          ),
        ),*/ /*
        IconContainer(
          Icons.verified_user,
          colorBg: Colors.green,
          colorIcon: Colors.white,
        ),
      ],
    );*/

    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 280,
               child: Image.network(
                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi2.hdslb.com%2Fbfs%2Farchive%2F5b4f599eac88b90af2d9e03f45a042b2551c5160.jpg&refer=http%3A%2F%2Fi2.hdslb.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1673430908&t=c985a9ec58d08e6865a8b16ff4c55980",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Expanded(
              flex: 1,
              child:SizedBox(
                height: 280,
                child: Column(
                children: [
                  Expanded(flex: 2,child: Image.network(
                    "https://img1.baidu.com/it/u=3408050783,412218639&fm=253&fmt=auto&app=138&f=JPEG?w=877&h=500",
                    fit: BoxFit.cover,
                  ),),
                  const SizedBox(height: 5,),
                  Expanded(flex: 2,child: Image.network(
                    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fp7.itc.cn%2Fimages01%2F20200619%2Fa605560a1af04a37a16469114a0930a9.jpeg&refer=http%3A%2F%2Fp7.itc.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1673431415&t=6ab1443580bbfd3e76a1dd5e12a67361",
                    fit: BoxFit.cover,
                  ),),
                ],
              ),),
            )
          ],
        )
      ],
    );
  }
}

/*class IconContainer extends StatelessWidget {
  Color colorBg;
  Color colorIcon;

  IconData icon;

  IconContainer(
    this.icon, {
    Key key,
    this.colorBg,
    this.colorIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      color: colorBg,
      child: Icon(
        icon,
        color: colorIcon,

        */ /*color: Colors.yellow,
        size: 27,*/ /*
      ),
    );
  }
}*/
