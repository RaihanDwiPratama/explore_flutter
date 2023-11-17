import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer({
    super.key,
    required this.selectHandler,
    required this.answerText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: ElevatedButton(
        onPressed: () => selectHandler(),
        child: Text(answerText),
      ),
    );
  }
}
