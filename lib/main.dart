import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('my first app')),
        body: Column(
          children: <Widget>[
            Text('Questions'),
            ElevatedButton(onPressed: null, child: Text('answer one')),
            ElevatedButton(onPressed: null, child: Text('answer two')),
            ElevatedButton(onPressed: null, child: Text('answer three')),
            ElevatedButton(onPressed: null, child: Text('answer four')),
          ],
        ),
      ),
    );
  }
}
