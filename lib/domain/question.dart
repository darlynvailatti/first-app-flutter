
import 'answer.dart';

class Question {

  String _description;
  Map<Answer, bool>_answers;
  int _score;

  Question(this._description, this._answers, this._score);

  Map<Answer, bool> get answers => _answers;

  String get description => _description;

  int get score => _score;

}