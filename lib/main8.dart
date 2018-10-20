import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert' show json;

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
        body: new TestTextWidget(),
      ),
    );
  }
}

class TestTextWidget extends StatefulWidget {
  @override
  _TestTestTextWidgetState createState() => _TestTestTextWidgetState();

}

class _TestTestTextWidgetState extends State<TestTextWidget> {

  String _content;

  _testDio() async {
    Dio dio = new Dio();
    Response response = await dio.get(
        'http://api.douban.com/v2/movie/in_theaters');
    return response.data.toString();
  }

  _onClick() async {
    _content = await _testDio();
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new ListView(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.drag_handle), onPressed: _onClick
          ),
          new Container(
            child: new Text('$_content'),
          ),
        ],
      ),
    );
  }
}