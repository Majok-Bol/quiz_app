import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 50) {
      resultText = 'Your score: Excellent ';
    } else if (resultScore <= 20 && resultScore <= 40) {
      resultText = 'Very good!';
    } else if (resultScore >= 10 && resultScore <= 19) {
      resultText = 'Your score: Average';
    } else {
      resultText = 'You score:Very low';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: resetHandler,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            child: Text('Restart quiz'),
          ),
        ],
      ),
    );
  }
}
