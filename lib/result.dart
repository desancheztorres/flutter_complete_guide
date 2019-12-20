import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  const Result({
    Key key,
    @required this.resultScore,
    @required this.resetQuiz,
  })  : assert(resultScore != null),
        assert(resetQuiz != null),
        super(key: key);

  String get resultPhrase {
    String resultText = "You did it!";

    if (resultScore <= 30) {
      resultText = "You are awesome and innocent";
    } else if (resultScore <= 35) {
      resultText = "Pretty likeable!";
    } else if (resultScore <= 35) {
      resultText = "you are... strange";
    } else {
      resultText = "you are so bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text("Restart Quiz"),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
