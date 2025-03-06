import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 34,
          // backgroundColor: CupertinoColors.activeOrange,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
