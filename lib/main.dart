import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Column(
          children: <Widget>[
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
