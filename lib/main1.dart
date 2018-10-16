import 'package:flutter/material.dart';

//void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyScaffold(),
    );
  }
}

class MyAppbar extends StatelessWidget{

  final Widget title;

  MyAppbar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu),
              onPressed: null),
          new Expanded(child: title),
          new IconButton(icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null)
        ],
      ),
    );
  }

}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppbar(
            title: new Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(
            child: new Text('Hello World!'),
          ),
        ],
      ),
    );
  }
}


