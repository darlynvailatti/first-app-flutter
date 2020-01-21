

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int _totalScore;
  final Function _resetQuiz;

  Result(this._totalScore, this._resetQuiz);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(
        child: Column(
        children: [
          Text("Quiz ended!",
            style: TextStyle(
                fontSize: 40
            ),),
          Text('Total score: $_totalScore',
            style: TextStyle(
                fontSize: 20
            ),
          ),
          RaisedButton(
            child: Text('Reset'),
            onPressed: _resetQuiz,
          )
        ],
        )
      ),
    );
  }

}