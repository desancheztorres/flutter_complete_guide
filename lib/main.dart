import 'package:complete_guide/quiz.dart';
import 'package:complete_guide/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Elephant', 'Cat', 'Spider', 'Rabbit']
    },
    {
      'questionText': 'Who is your favourite instructor',
      'answers': ['Max', 'Max', 'Max', 'Max']
    },
  ];

  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen! $_questionIndex');
  }
}
