import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('hello demo'),
      ),
      body: Column(
        children: const [
          SizedBox(height: 20),
          MyApp(),
          /*SizedBox(
            height: 20,
          ),*/
          MyCircleImg(),
          SizedBox(height: 30),
          ClipImage(),
          SizedBox(height: 30),
          LoadLocalImg()
        ],
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(color: Colors.yellow),
        // child: Image.network("https://img2.baidu.com/it/u=147272422,1249048325&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500"),
        // child: Image.network("https://img1.baidu.com/it/u=1149172349,824709524&fm=253&fmt=auto&app=120&f=JPEG?w=1524&h=800",
        child: Image.network(
          "https://img2.baidu.com/it/u=147272422,1249048325&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
          // scale: 2 ,
          alignment: Alignment.centerLeft,
          // fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}

class MyCircleImg extends StatelessWidget {
  const MyCircleImg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.yellow,
          image: const DecorationImage(
              image: NetworkImage(
                  "https://img1.baidu.com/it/u=1149172349,824709524&fm=253&fmt=auto&app=120&f=JPEG?w=1524&h=800"),
              fit: BoxFit.cover),
          /* shape: BoxShape.circle,*/
          borderRadius: BorderRadius.circular(15)),
    );
  }
}

class ClipImage extends StatelessWidget {
  const ClipImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://img2.baidu.com/it/u=147272422,1249048325&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

class LoadLocalImg extends StatelessWidget {
  const LoadLocalImg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.yellow
      ),
      child: Image.asset("images/aaa.jpeg",

        fit: BoxFit.cover,
      ),


    );
  }
}
