import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function todo;
  Quiz(this.questions, this.index, this.todo);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[index]['questionText']),
          ...(questions[index]['answerText'] as List<Map<String, Object>>)
              .map((a) {
            return Answer(() => todo(a['score']), a['text']);
          })
        ],
      ),
    );
  }
}
