import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class RowIconText extends StatelessWidget {
  final String image;
  final String text;

  const RowIconText({
    required this.image,
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(image),
            const SizedBox(width: 8),
            Text(
              text,
              style: Style.textSks.copyWith(
                fontWeight: FontWeight.w400,
                color: ColorLxp.neutral800,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
