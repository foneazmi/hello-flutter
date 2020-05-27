import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hellokhan/widget/1.HelloWidget/helloWidget.dart';
import 'package:hellokhan/widget/2.TextWidget/textWidget.dart';
import 'package:hellokhan/widget/3.RowNColoumn/rowNColumn.dart';
import 'package:hellokhan/widget/4.Container/Container.dart';
import 'package:hellokhan/widget/5.StatelessnStatefull/StatelessnStateless.dart';

void main() {
  runApp(MaterialApp(
    home: HelloKhan(),
    title: "HelloKhan",
    showSemanticsDebugger: false,
    routes: <String, WidgetBuilder>{
      '/hellowidget': (BuildContext context) => HelloWidget(),
      '/textwidget':(BuildContext context) => TextWidget(),
      '/rowncolumn':(BuildContext context) => RowNColumn(),
      '/container':(BuildContext context) => ContainerWidget(),
      '/statelesstatlefull':(BuildContext context) => StatelessNStatefull(),
    },
  ));
}

class HelloKhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HelloWidget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            CupertinoButton.filled(
              child: Text('Hello Widget'),
              onPressed: () {
                Navigator.pushNamed(context, '/hellowidget');
              },
            ),
            SizedBox(
              height: 8,
            ),
            CupertinoButton.filled(
              child: Text('Text Widget'),
              onPressed: () {
                Navigator.pushNamed(context, '/textwidget');
              },
            ),
            SizedBox(
              height: 8,
            ),
            CupertinoButton.filled(
              child: Text('Row & Column'),
              onPressed: () {
                Navigator.pushNamed(context, '/rowncolumn');
              },
            ),
            SizedBox(
              height: 8,
            ),
            CupertinoButton.filled(
              child: Text('Container'),
              onPressed: () {
                Navigator.pushNamed(context, '/container');
              },
            ),
            SizedBox(
              height: 8,
            ),
            CupertinoButton.filled(
              child: Text('Stateless & Statefull'),
              onPressed: () {
                Navigator.pushNamed(context, '/statelesstatlefull');
              },
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
