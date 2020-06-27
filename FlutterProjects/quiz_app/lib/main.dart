import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
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
//Lifting State Up
class _MyAppState extends State<MyApp>{
  //Create a question -> answer mapping
  //This will be list of maps
  final _questions = const [
    {
      'questionText': 'Choose a color',
      'answers': ['Red','Green','Blue','Rainbow']
    },
    {
      'questionText': 'Choose an animal',
      'answers': ['Dog','Cat','Hamster','Dragon']
    },
    {
      'questionText': 'Choose a food',
      'answers': ['Burger','Pizza','Pasta','Food']
    }
  ];
  var _questionIndex = 0;
  //We will pass this function as a pointer to onPressed
  //If we pass answerQuestion()...it'll be automatically called
  //This is a named function. But, we can use an anonymous function
  void _answerQuestion(){
    //This will make sure that build is called again to update our widget
    setState(() {
      _questionIndex++;
    });

  } //answerQuestion

  void _resetQuiz(){
    setState( () {
      _questionIndex = 0;
    }
    );
  }
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
        //Pass function to Answer --> callback function
        body: _questionIndex < _questions.length ? 
        Quiz(
          answerQuestion: _answerQuestion,
          questions: _questions,
          questionIndex: _questionIndex
        )
        : Result(_resetQuiz)
        )
    ); //Material App
  } //build
} //MyAppState