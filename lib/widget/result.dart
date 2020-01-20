

import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {

  final int _totalScore;

  Result(this._totalScore);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(
        'Total score: $_totalScore',
        style: TextStyle(
          fontSize: 20
        ),
      ),
    );
  }

}