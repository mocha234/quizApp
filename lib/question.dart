import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({Key key}) : super(key: key);

  final String questionText;
  // won't change after intialize.

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(100),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, backgroundColor: Colors.blue[50]),
        textAlign: TextAlign.center,
      ),
    );
  }
}
