import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './question.dart';

void main()
{
  //Place widget on screen
  //MyApp() constructs the MyApp widget
  //Recursively build out widget tree
  //runApp was provided by package
  //When runApp is called, a lot of thing happen so widgets are displayed
  //including calling build
  runApp(MyApp());
}

//Can do: void main() => runApp(MyApp());
//Since one expression^

class MyApp extends StatefulWidget{
  @override 
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}
//Provides us with widgets to work with
//MyApp is a custom widget WE build that inherits some of the
//fundamental properties that every widget should have
//Private _ means only main.dart can use
class _MyAppState extends State<MyApp>{
  //We will pass this function as a pointer to onPressed
  //If we pass answerQuestion()...it'll be automatically called
  //This is a named function. But, we can use an anonymous function
  var questions = [
    "What's your favorite food?",
    "What's your favorite animal?",
    "What's your favorite city?"
  ];
  var _questionIndex = 0;
  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });
  } //answerQuestion
  //This is not necessary but it makes it clear that we are NOT using
  //whatever default build function that StatelessWidget had. We are
  //customizing it for ourself
  //Like inheriting an Enemy class and overriding the default attack ability
  @override 
  //build returns a widget (widgets return other widgets)
  //build returns the widget tree that tells Flutter what to draw
  //Flutter provides context which is an object
  //Context: metadata for widget
  //Every widget is just a Dart class...just an object
  Widget build(BuildContext context){
    //Base setup
    //MaterialApp is a class and we're calling a constructor above
    //Text is also a widget along with Scaffold
    //Scaffold provides a default template look
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App') 
        ),
        body: Column(children:
        [
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion
          ),
          RaisedButton( 
            child: Text('Answer 2'),
            onPressed: _answerQuestion
          ),
          RaisedButton( 
            child: Text('Answer 3'),
            onPressed: _answerQuestion
          )
        ] // List of Widgets for our Column
        )
        )
    ); //Material App
  } //build
} //MyAppState