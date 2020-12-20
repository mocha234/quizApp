import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key key}) : super(key: key);

  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          //questions.elementAt(1)
          questions[questionIndex]["questionText"],
        ),
        ...((questions[questionIndex]["answer"]) as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer["score"]), answer["text"]);
        }).toList(),
      ],
    );
  }
}
