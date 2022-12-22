import 'package:flutter/material.dart';

class PublishPage extends StatefulWidget {
  const PublishPage({Key key}) : super(key: key);

  @override
  State<PublishPage> createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('商品发布'),
    );
  }
}
