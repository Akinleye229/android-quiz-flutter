import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetQuiz;
  Result(this.resultScore,this.resetQuiz);

  String get resultPhase {
    var resultText;
  
    if (resultScore<=25){
      resultText='You are a bad human being your score is $resultScore'  ;
      
    }else if (resultScore<=35){
      resultText='You are a good human being being but you are not that good your score is $resultScore';
      
       }else if (resultScore<=50){
      resultText='You are a Awesome human being my dear your score is $resultScore';
      

      } else {
        resultText='you are such a wonderful human being your score is $resultScore';
        
      }

   
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return
    Center(child: Column(children:<Widget>[Text(resultPhase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,), 
    FlatButton(child: Text('reset quiz'),onPressed: resetQuiz,),],





    
    )); 
  }
}