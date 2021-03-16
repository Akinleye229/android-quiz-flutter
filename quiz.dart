import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';


class Quiz extends StatelessWidget {
 final int questionIndex;
 final Function answerQuestion;
 final List<Map<String, Object>> question;

 Quiz({this.answerQuestion, this.questionIndex, this.question});




  @override
  Widget build(BuildContext context) {
    return 
          Column(
             children:[Question(question[questionIndex]['questiontext']),
             ...(question[questionIndex]['answer'] as List<Map<String,Object>>)
             .map((answer){

               return Answer(()=>answerQuestion(answer['score']), answer['text']);
             }).toList()
             
            


             ],);
      

  }
}