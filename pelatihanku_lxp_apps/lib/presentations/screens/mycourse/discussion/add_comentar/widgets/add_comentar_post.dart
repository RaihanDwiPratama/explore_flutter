import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class AddComentarPost extends StatelessWidget {
  const AddComentarPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/neneng.png",
              width: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: 1,
              height: 64,
              color: ColorLxp.neutral300,
            ),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Neneng Rohaye',
                        style: Style.textTitleCourse.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '12.30',
                        style: Style.textSks.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz_outlined,
                    color: ColorLxp.neutral800,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Apa yang dimaksud dengan pernyataan "Yang penting kamu mengerti" dalam konteks komunikasi?',
                maxLines: 3,
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
