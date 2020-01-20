import 'package:flutter/material.dart';
import 'package:my_first_app/domain/answer.dart';
import 'package:my_first_app/domain/question.dart';
import 'package:my_first_app/widget/no_questions.dart';
import 'package:my_first_app/widget/question_card.dart';
import 'package:my_first_app/widget/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Widget> _questionsWidgets = List<Widget>();
  int _questionIndex = 0;

  void _chooseAnswer() {
    setState(() {
      _questionIndex++;
    });
  }

  void _buildQuestions() {
    print('Building questions...');
    Question questionOne = Question("Who invented eletric light?",
        {Answer("Tesla"): true, Answer("Edson"): false});

    Question questionTwo = Question("What's yout favorite animal?",
        {Answer("Zebra"): true, Answer("Lion"): false});

    var questionCardOneWidget = QuestionCard(questionOne, _chooseAnswer);
    var questionCardTwoWidget = QuestionCard(questionTwo, _chooseAnswer);

    _questionsWidgets.clear();
    _questionsWidgets.addAll([questionCardOneWidget, questionCardTwoWidget]);
  }

  bool _isAnyQuestionYet() {
    print('Question Index: $_questionIndex | $_questionsWidgets');
    return _questionIndex < _questionsWidgets.length;
  }

  @override
  void initState() {
    _buildQuestions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions Quiz'),
        ),
        body: Column(children: [
          _isAnyQuestionYet()
              ? Quiz(_questionsWidgets[_questionIndex])
              : NoQuestions()
        ]),
      ),
    );
  }
}
