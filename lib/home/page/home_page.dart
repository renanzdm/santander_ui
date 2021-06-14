import 'package:flutter/material.dart';
import 'package:santander_ui/home/widgets/my_header.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: MyHeader(maxExtentHeight: 200),
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, index) {
              return ListTile(
                title: Text(index.toString()),
              );
            },
          ),
        ),
      ],
    ));
  }
}
