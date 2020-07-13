import 'package:quiz_app/result.dart';

import 'quiz.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What is your favorite color?' ,
      'answerText': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 4},
        {'text': 'Orange', 'score': 4}
      ],
    },
    {
      'questionText':'What is your favorite animal?',
      'answerText': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 4},
        {'text': 'Monkey', 'score': 4}
        ]
    },
    {
      'questionText':'What is your favorite sports?',
      'answerText': [
        {'text': 'Cricket', 'score': 10},
        {'text': 'Badminton', 'score': 5},
        {'text': 'Badminton', 'score': 4},
        {'text': 'Swimming', 'score': 4}
        ]
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
}


  void _answerQuestion(int score)
  {
    setState(
            () {
              _questionIndex = _questionIndex + 1;
            }
    );

   _totalScore += score;
   print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp
      (
        home: Scaffold
          (
            appBar: AppBar
              (
                title: Text('Quiz App'),

                backgroundColor: Colors.amber,
              ),

            body:
            (
            _questionIndex < _questions.length
                ?
                  Quiz(answerQuestion: _answerQuestion,questionIndex: _questionIndex,questions: _questions)
                :
                  Result(score: _totalScore, reset: _resetQuiz,)
            ),
          )
      );
  }

}