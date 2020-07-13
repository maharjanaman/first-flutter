import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyFlutterAcademind());

class MyFlutterAcademind extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFlutterAcademindState();
  }
}

class _MyFlutterAcademindState extends State<MyFlutterAcademind> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Academind'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('This is question 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('This is question 2'),
              onPressed: () => print('Answer Two'),
            ),
            RaisedButton(
              child: Text('This is question 3'),
              onPressed: () {
                print('Answer Three');
              },
            ),
          ],
        ),
      ),
    );
  }
}
