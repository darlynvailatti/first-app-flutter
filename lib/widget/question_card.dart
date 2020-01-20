import 'package:flutter/material.dart';
import 'package:my_first_app/domain/answer.dart';
import 'package:my_first_app/domain/question.dart';

class QuestionCard extends StatelessWidget {
  final Question _question;

  final Function _chooseAnswer;

  QuestionCard(this._question, this._chooseAnswer);

  @override
  Widget build(BuildContext context) {
    List<RaisedButton> answersWidgets = [];

    _question.answers.forEach((answer, isCorrect) => {
          answersWidgets.add(RaisedButton(
            child: Text(answer.description),
            onPressed: _chooseAnswer,
          ))
        });

    return Card(
      elevation: 10,
      child: ListBody(
        children: [
          Text(
            _question.description,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Container(
            child: ListBody(
              children: answersWidgets,
            ),
          ),
        ],
      ),
    );
  }
}
