import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DokumenLxp extends StatelessWidget {
  final String title;
  const DokumenLxp({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/icons/FilePdf.svg'),
            const SizedBox(width: 8),
            Text(
              title,
              style: Style.textTitleCourse.copyWith(
                color: ColorLxp.neutral500,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.file_download_outlined,
              color: ColorLxp.successNormal,
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(
          color: ColorLxp.neutral200,
          height: 1,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
