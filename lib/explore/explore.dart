import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore')),
      body: Center(child: Text('Page not built yet!')),
    );
  }
}