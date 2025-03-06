import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    {
      'Question text': 'What is your favorite color?',
      'answers': ['red', 'blue', 'white', 'green'],
    },
    {
      'Question text': 'What is your favorite Animal?',
      'answers': ['dog', 'cat', 'horse', 'donkey'],
    },
    {
      'Question text': 'Who\'s is your favorite teacher?',
      'answers': ['Maxwell', 'Daniel', 'John', 'Greenwood'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first Flutter app')),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['Question text']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((
              answer,
            ) {
              return Answer(_answerQuestion, answer);
            }),
          ],
        ),
      ),
    );
  }
}
