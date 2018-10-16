import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new TutorialHome(),
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'NavigationMenu',
            onPressed: null
        ),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
              onPressed: null
          ),
        ],
      ),
      body: new Center(
        child: new Text('Hello World!'),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'Add',
          child: new Icon(Icons.add),
          onPressed: null
      ),
    );
  }
}




