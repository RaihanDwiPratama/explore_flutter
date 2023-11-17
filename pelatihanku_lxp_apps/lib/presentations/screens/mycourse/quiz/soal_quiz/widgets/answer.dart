// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

// ignore: must_be_immutable
class Answer extends StatefulWidget {
  final Function selectHandler;
  final String answerText;
  final VoidCallback? voidCallback;

  const Answer({
    Key? key,
    required this.selectHandler,
    required this.answerText,
    required this.voidCallback,
  }) : super(key: key);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  bool isColor = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.selectHandler();

        setState(() {
          isColor = !isColor;
        });
        widget.voidCallback?.call();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          color: isColor ? ColorLxp.primaryLight : null,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorLxp.neutral200,
            width: 1.0,
          ),
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
