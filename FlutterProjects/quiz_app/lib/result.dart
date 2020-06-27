import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  Result(this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Quiz Completed'),
          FlatButton(child: 
          Text('Restart Quiz!'),
          onPressed: resetQuiz,)
        ],
      ));
  }
}