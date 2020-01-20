
import 'answer.dart';

class Question {

  String _description;
  Map<Answer, bool>_answers;

  Question(this._description, this._answers);

  Map<Answer, bool> get answers => _answers;

  String get description => _description;

}