import 'package:flutter/material.dart';

void main() {
  runApp(const StateLifecycleTest());
}


/*

class MyPage extends StatelessWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter Demo",
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
    // return Stack(
    //   alignment: Alignment.center,
    //   children: [
    //     Container(
    //       height: 500,
    //       width: 500,
    //       color: Colors.red,
    //     ),
    //     const Text('hello'),
    //     const Text('hello111'),
    //     SizedBox(
    //         height: 200,
    //         width: 200,
    //         child: Image.network(
    //             "https://bkimg.cdn.bcebos.com/pic/b999a9014c086e061d95330fcf446cf40ad162d95d68?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5"))
    //   ],
    // );
    */
/*return Container(
      height: 300,
      width: 400,
      color: Colors.green,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),),
          const Positioned(
            right: 150,
            top: 150,
            child: Text("hello~~~"),
          )
        ],
      ),
    );*/

/*

    final size = MediaQuery
        .of(context)
        .size;

    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(top: 50),
          children: const [
            ListTile(
              title: Text("00000000"),
            ),
            ListTile(
              title: Text("kkkkkkkkk"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
            ListTile(
              title: Text("111111111"),
            ),
          ],
        ),
        Positioned(
          left: 0,
          top: 0,
          width: size.width,
          height: 44,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    color: Colors.yellow,
                    child: const Echo(
                      text: "2级导航",
                      colorBg: Colors.red,
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}

class Echo extends StatelessWidget {
  final String text;
  final Color colorBg;

  const Echo({Key key, @required this.text, this.colorBg = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: colorBg,
        child: Text(text),
      ),
    );
  }
}
*/

class CounterWidget extends StatefulWidget {
  final int initValue;

  const CounterWidget({Key key, this.initValue = 0}) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(home: Scaffold(
      body: Center(
        child: TextButton(
          child: Text("${_counter}"),
          onPressed: () => setState(
                () => ++_counter,
          ),
        ),
      ),
    ));
  }

  @override
  void didUpdateWidget(covariant CounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print('reassemble');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}

class StateLifecycleTest extends StatelessWidget {
  const StateLifecycleTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CounterWidget();
  }
}
