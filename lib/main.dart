import 'package:complete_guide/answer.dart';
import 'package:complete_guide/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    const List<Map<String, dynamic>> questions = const [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    _questionIndex = _questionIndex + 1;
    setState(() {});
    print('Answer chosen! $_questionIndex');
  }
}
