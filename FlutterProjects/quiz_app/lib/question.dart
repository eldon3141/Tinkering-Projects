import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //Once assigned, it can't be changed...at least for this instance
  final String questionText;

  //Constructor
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    //Aliging with just Text doesn't work since widget dimension is limited
    //by the text content. Width is set by just how much is needed 
    //Container provides more flexibility
    return Container(
      width: double.infinity,
      //Container: Child -> padding -> border -> margin
      margin: EdgeInsets.all(10),
      child: Text( //child always contain contents
        questionText, 
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center
      )
    );

  } //build
} //Class