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
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: SvgPicture.asset('assets/icons/FilePdf.svg'),
      title: Text(
        title,
        style: Style.textTitleCourse.copyWith(
          color: ColorLxp.neutral500,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(
        Icons.file_download_outlined,
        color: ColorLxp.successNormal,
      ),
    );
  }
}
