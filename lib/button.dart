import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final String answer;
  final Function answerSelecter;
  Button(this.answer,this.answerSelecter);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(color: Colors.amber,
        child: Text(answer),
        textColor: Colors.limeAccent,
        onPressed: answerSelecter,),
    );
  }
}