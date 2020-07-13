import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int score;
  final Function reset;

  Result({this.score, this.reset});

  String get resultPhrase{
    String result;
    if(score<15) {
      result = 'You are so bad';
    } else if(score<25) {
      result = 'You are lil bit good';
    } else{
      result= 'You are good';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          children: <Widget>
          [
            Text(resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic ,), textAlign: TextAlign.center,
              ),
             Container( 
               padding: EdgeInsets.all(20),
               
                 child :FlatButton(child: Text('Restart',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber),) , onPressed: reset,)
             )  
          ],
        )
                    );
  }

}