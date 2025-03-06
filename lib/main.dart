import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  var questions = [
    'What is your favorite colour?',
    'What is your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first Flutter app')),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('answer one'),
            ),
            ElevatedButton(
              onPressed: () => print("answer two chosen"),
              child: Text('answer two'),
            ),
            ElevatedButton(
              onPressed: () => print("answer three chosen"),
              child: Text('answer three'),
            ),
            ElevatedButton(
              onPressed: () => print("answer four chosen"),
              child: Text('answer four'),
            ),
          ],
        ),
      ),
    );
  }
}
