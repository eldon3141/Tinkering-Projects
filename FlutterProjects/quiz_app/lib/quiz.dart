import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String,Object>> questions;
  final int questionIndex;

  Quiz({
    @required this.answerQuestion,
    @required this.questions,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return 
        Column(children:
        [
          Question(questions[questionIndex]['questionText']),
          /*
            "as" is a type cast operator: "Hey this is a list of strings!"
            .map() will produce a new list after transforming each element in list
            So...this takes our list of answer choices ['a','b','c'] and for each
            answer, we produce an Answer choice widget: Answer(_answerQuestion,answer)
            So...if list = ['a','b',c'], we'd get this list in return:
            Answer(_answerQuestion,'a'),
            Answer(_answerQuestion,'b'),
            Answer(_answerQuestion,'c')
            Lastly, the "..." will combine our generated list into the children list
          */
          ...(questions[questionIndex]['answers'] as List<String>).map((answer){
            return Answer(answerQuestion,answer);
          }).toList()
        ] // List of Widgets for our Column
        );
  }
}