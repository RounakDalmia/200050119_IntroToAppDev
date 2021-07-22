import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(100, 50, 100, 20),
      child: Text(
        questionText,
        textScaleFactor: 2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
