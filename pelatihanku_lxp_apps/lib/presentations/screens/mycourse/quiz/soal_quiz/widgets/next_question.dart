import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class NextQuestion extends StatelessWidget {
  final Function nextQuestionCallback;

  const NextQuestion({
    super.key,
    required this.nextQuestionCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20.0,
        right: 16.0,
      ),
      child: GestureDetector(
        onTap: () {
          nextQuestionCallback();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Soal Berikutnya',
              style: Style.textTitleCourse.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 42,
              height: 42,
              decoration: Style.btnIcon,
              child: const Icon(
                Icons.chevron_right,
                color: ColorLxp.primary,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
