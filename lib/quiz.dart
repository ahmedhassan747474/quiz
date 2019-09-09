import 'package:flutter/material.dart';
 import './anwser.dart';
import 'qusetion.dart';
class Quiz extends StatelessWidget {
 final Function answerQuetion;
 final int index ;
 final List<Map<String,Object>>   questions;
 Quiz({@required this.questions,@required this.answerQuetion,@required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Question(questions[index]['questionText'])),

        ...(questions[index]['answers'] as List<Map<String,Object>>)
            .map((anwser) {
          return Anwser(() => answerQuetion( anwser['score'] ), anwser['text']);
        }).toList(),
      ],
    );
  }
}
