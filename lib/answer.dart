import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHadler;
  final String answerText;

  Answer(this.selectHadler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHadler,
      ),
    );
  }
}
