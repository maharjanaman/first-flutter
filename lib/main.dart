import 'package:flutter/material.dart';

void main() => runApp(MyFlutterAcademind());

class MyFlutterAcademind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Academind'),
        ),
        body: Text('Hello Flutter'),
      ),
    );
  }
}
