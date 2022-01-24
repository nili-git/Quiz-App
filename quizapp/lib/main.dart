import 'package:flutter/material.dart';
import './question.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 var questionIndex = 0;

void answerquestion(){
  setState(() {
     questionIndex = questionIndex + 1;

  });
 
  print(questionIndex);
}
  @override
  Widget build(BuildContext context) {
     var questions = ['what\'s your favorite color?',
  'what\'s your favorite animal?',];
  
   return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text(" My First App"),
        ),
        body: Column(
          children: [
            Text( questions[questionIndex]),
            RaisedButton( 
            child: Text('Answer 1'),
            onPressed: answerquestion,
            ),
              RaisedButton( 
            child: Text('Answer 2'),
            onPressed: answerquestion,
            ),
              RaisedButton( 
            child: Text('Answer 3'),
            onPressed: answerquestion,
            ),
          ],
        ),
      ),
      
    );
  }
}


