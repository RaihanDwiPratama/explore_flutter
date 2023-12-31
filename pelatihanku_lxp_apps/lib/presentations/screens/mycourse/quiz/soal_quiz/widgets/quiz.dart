import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/quiz/soal_quiz/widgets/answer.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/quiz/soal_quiz/widgets/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final Function nextQuestion;

  const Quiz({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    required this.nextQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            selectHandler: () {
              answerQuestion(answer['score']);
              nextQuestion();
            },
            answerText: answer['text'].toString(),
          );
        }).toList()
      ],
    );
  }
}
