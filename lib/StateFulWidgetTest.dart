import 'package:flutter/material.dart';

void main() {
  runApp(const Mypage());
}

class Mypage extends StatelessWidget {
  const Mypage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: CountPage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 10,),
          Text(
            '${countNum}',
            style: TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                countNum++;
                print(countNum);
              },
              child: Text('Add'))
        ],
      ),
    );
  }
}

class CountPage extends StatefulWidget {
  const CountPage({Key key}) : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 10,),
            Text(
              '${countNum}',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    countNum++;
                  });
                  print(countNum);
                },
                child: const Text('Add'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            countNum++;
          });
        },
        child: Icon(Icons.favorite,color: Colors.red,),
      ),
    );
  }
}
