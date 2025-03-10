import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 100) {
      resultText = 'Your score: Excellent!';
    } else if (resultScore >= 80) {
      resultText = 'Very good!';
    } else if (resultScore >= 70) {
      resultText = 'Good!';
    } else if (resultScore >= 60) {
      resultText = 'Average!';
    } else {
      resultText = 'Your score: Failed!';
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
