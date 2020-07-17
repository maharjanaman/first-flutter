import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyFlutterAcademind());

class MyFlutterAcademind extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFlutterAcademindState();
  }
}

class _MyFlutterAcademindState extends State<MyFlutterAcademind> {
  final _questions = const [
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
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
