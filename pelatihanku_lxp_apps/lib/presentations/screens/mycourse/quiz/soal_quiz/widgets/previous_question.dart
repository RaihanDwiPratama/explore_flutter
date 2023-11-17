import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class PreviousQuestion extends StatelessWidget {
  final Color colorBtn;
  final Color colorText;

  const PreviousQuestion({
    super.key,
    required this.colorBtn,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20.0,
        right: 16.0,
        left: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                    width: 2,
                    color: ColorLxp.primary,
                  ),
                ),
                child: const Icon(
                  Icons.chevron_left,
                  color: ColorLxp.primary,
                  size: 25,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Soal Sebelumnya',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            width: 134,
            height: 42,
            decoration: BoxDecoration(
              color: colorBtn,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Selesai',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w500,
                  color: colorText,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
