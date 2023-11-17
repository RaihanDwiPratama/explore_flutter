import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({
    super.key,
    required this.questionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: Style.textButtonBlank.copyWith(
          fontWeight: FontWeight.w600,
          color: ColorLxp.neutral800,
        ),
      ),
    );
  }
}
