import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  final _questions = const [
    {
      'Question text': 'What is your favourite color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 20},
        {'text': 'black', 'score': 30},
        {'text': 'white', 'score': 40},
      ],
    },
    {
      'Question text': 'What is your favourite Animal?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 20},
        {'text': 'horse', 'score': 30},
        {'text': 'cow', 'score': 40},
      ],
    },
    {
      'Question text': 'Who\'s is your favourite Role Model?',
      'answers': [
        {'text': 'Andrew Carnegie', 'score': 10},
        {'text': 'Mary Hill', 'score': 20},
        {'text': 'Napoleon Hill', 'score': 30},
        {'text': 'Dale Carnegie', 'score': 40},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first Flutter app project')),
        body:
            _questionIndex < _questions.length
                ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
                : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
