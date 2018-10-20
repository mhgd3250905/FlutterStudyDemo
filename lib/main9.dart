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

  List<subject> _subjects = new List();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  getData() async {
    Dio dio = new Dio();
    Response response = await dio.get(
        'http://api.douban.com/v2/movie/top250?start=25&count=25');
    return response.data;
  }

  loadData() async {
    var datas = await getData();
    Douban douban=new Douban(datas);
    _subjects=douban.subjects;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child:
      ListView.builder(
        itemCount: _subjects.length,
        itemBuilder: (BuildContext context, int pos) {
          return new Column(
            children: <Widget>[
              new Text('${_subjects[pos].title}'),
              new Text('\n'),
            ],
          );
        },
      ),
    );
  }

}


