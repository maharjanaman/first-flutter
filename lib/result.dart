import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 3) {
      resultText = 'Good Performance!!';
    } else if (resultScore <= 6) {
      resultText = 'Better Performance!!';
    } else {
      resultText = 'Best Performance!!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restartQuiz,
            child: Text('Restart Quiz!!!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
