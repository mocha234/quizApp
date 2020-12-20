import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Result(this.totalScore);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 3) {
      resultText = "totalScore <=3";
    } else if (totalScore <= 8) {
      resultText = "totalScore <=8";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
