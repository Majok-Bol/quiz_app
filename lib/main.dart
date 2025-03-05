import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  var questions = [
    'What is your favorite colour?',
    'What is your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(questions[questionIndex])),
        body: Column(
          children: <Widget>[
            Text('Questions'),
            ElevatedButton(
              onPressed: answerQuestion,
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
