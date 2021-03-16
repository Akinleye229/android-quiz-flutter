import 'package:devapp/quiz.dart';
import 'package:flutter/material.dart';




import './quiz.dart';
import './result.dart';

  void main() {

    runApp(MyApp());
    
  }

  class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    var questionIndex=0;

    var question=[
      {'questiontext':'what is your best color','answer':
              [{'text':'Blue', 'score':10},
              {'text':'Red','score':15},
               {'text':'yellow','score':20},
              {'text':'white','score':5}]},
      {'questiontext':'what is your best food','answer':
              [{'text':'Rice', 'score':5},
              {'text':'beans','score':30},
               {'text':'idomine','score':5},
              {'text':'Amala','score':20}]},
    
      {'questiontext':'what is your favourite animal','answer':
              [{'text':'Dog', 'score':10},
              {'text':'Tiger','score':15},
               {'text':'Cat','score':20},
              {'text':'Goat','score':5}]},
     
    ];

    var totalScore=0;
    void resetQuiz(){
      setState(() {
          totalScore=0;
          questionIndex=0;
        
      });
     

    }

    void answerQuestion(int score){

      totalScore+=score;

      setState(() {
         questionIndex=questionIndex + 1;
        
      });
     
      
    }

    Widget build(BuildContext context){

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('my first appp'),
            ), body: questionIndex < question.length 
            ? Quiz(answerQuestion: answerQuestion, questionIndex: questionIndex, question: question,):
            Result(totalScore, resetQuiz) 
             
           ),
      );

    }
}