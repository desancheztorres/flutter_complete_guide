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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'White', 'score': 3},
        {'text': 'Green', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Elephant', 'score': 10},
        {'text': 'Cat', 'score': 8},
        {'text': 'Snake', 'score': 7},
        {'text': 'Lion', 'score': 5},
      ]
    },
    {
      'questionText': 'Who is your favourite instructor',
      'answers': [
        {'text': 'Cristian', 'score': 50},
        {'text': 'Fernando Herrera', 'score': 25},
        {'text': 'Victor Robles', 'score': 10},
        {'text': 'Max', 'score': 15},
      ]
    },
  ];

  int _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

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
            : Result(
                resultScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

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
