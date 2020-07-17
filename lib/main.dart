import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyFlutterAcademind());

class MyFlutterAcademind extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFlutterAcademindState();
  }
}

class _MyFlutterAcademindState extends State<MyFlutterAcademind> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Red',
        'Blue',
        'Green',
        'White',
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Cat',
        'Dog',
        'Tiger',
        'Lion',
      ]
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Academind'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!!!'),
              ),
      ),
    );
  }
}
