import 'package:flutter/material.dart';

void main() => runApp(MyFlutterAcademind());

class MyFlutterAcademind extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFlutterAcademindState();
  }
}

class MyFlutterAcademindState extends State<MyFlutterAcademind> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('This is question 1'),
              onPressed: answerQuestion,
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
