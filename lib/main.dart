import 'package:flutter/material.dart';
import 'package:udemy1stapp/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favourite colour?",
      "answer": [
        {"text": "Black", "score": 1},
        {"text": "White", "score": 2},
        {"text": "Blue", "score": 3},
      ],
    },
    {
      "questionText": "What's your favourite phone brand?",
      "answer": [
        {"text": "Apple", "score": 1},
        {"text": "Samsung", "score": 2},
        {"text": "XiaoMi", "score": 3},
      ],
    },
    {
      "questionText": "What's your favourite class?",
      "answer": [
        {"text": "C1", "score": 1},
        {"text": "C2", "score": 2},
        {"text": "C3", "score": 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += 1;
    print(_totalScore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more question!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('1st App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore)),
    );
  }
}
