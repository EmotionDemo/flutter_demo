import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('hello flutter')),
          body: const Center(
            child: Text('你好Flutter2233',
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.red, fontSize: 35)),
          )),
    ),
  );
}
