import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result({
    super.key,
    required this.resultScore,
    required this.resetHandler,
  });

  String get resultPhrase {
    String resultText;
    if (resultScore >= 80) {
      resultText = "You are awesome!";
    } else if (resultScore >= 60) {
      resultText = "Pretty likeable!";
    } else if (resultScore >= 40) {
      resultText = "You need to work more!";
    } else if (resultScore >= 20) {
      resultText = "You need to work hard!";
    } else {
      resultText = "This is a poor score!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$resultPhrase, \nScore : $resultScore',
      ),
    );
  }
}
