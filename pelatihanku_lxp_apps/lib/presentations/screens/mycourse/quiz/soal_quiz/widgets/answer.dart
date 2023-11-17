import 'package:flutter/material.dart';

import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class Answer extends StatefulWidget {
  final Function selectHandler;
  final String answerText;
  // final VoidCallback? voidCallback;

  const Answer({
    Key? key,
    required this.selectHandler,
    required this.answerText,
    // required this.voidCallback,
  }) : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        // widget.voidCallback;
        // widget.selectHandler();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: Style.borderNeutral.copyWith(
          color: isSelected ? ColorLxp.primaryLight : null,
        ),
        child: Text(
          widget.answerText,
          style: Style.textTitleCourse.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
