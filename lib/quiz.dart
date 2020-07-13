import 'package:flutter/material.dart';
import 'button.dart';
import 'question.dart';


class Quiz extends StatelessWidget{
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
  {
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex
  }
  );


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>
      [
        Question(questions[questionIndex]['questionText'],),

      ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>).map((answer)
  {
        return Button(answer['text'],() => answerQuestion(answer['score']));
  }).toList()

      ],

    );
  }
}