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
      padding: const EdgeInsets.only(
        top: 32.0,
        bottom: 24.0,
      ),
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
