import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert' show json;
import 'douban_2.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Demo'),
        ),
        body: new Container(),
      ),
    );
  }
}



