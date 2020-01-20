import 'package:flutter/cupertino.dart';
import 'package:my_first_app/widget/question_card.dart';

class Quiz extends StatelessWidget {

  final QuestionCard _questionCard;

  Quiz(this._questionCard);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_questionCard],
    );
  }

}