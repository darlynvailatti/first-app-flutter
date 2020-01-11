import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> questions = [
      'First question',
      'Second question',
    ];

    List<Widget> questionsWidgets = List<Widget>();
    for(String question in questions){
      Card card = Card(
        elevation: 10,
        child: ListBody(
          children: [
            Text(question),
            RaisedButton(
              child: Text('Answer'),
              onPressed: () => print('Pressed button of question ' + question),
            )
          ],
        ),
      );
      questionsWidgets.add(card);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dear Fried'),
        ),
        body: Column(
          children:
            questionsWidgets,
        ),
      ),
    );
  }
}
