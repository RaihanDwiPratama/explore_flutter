import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class SettingLxp extends StatelessWidget {
  final IconData leading;
  final String title;
  final VoidCallback onTap;

  const SettingLxp({
    super.key,
    required this.leading,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      leading: CircleAvatar(
        backgroundColor: ColorLxp.primaryLightProfile,
        child: Icon(
          leading,
          color: ColorLxp.primary,
        ),
      ),
      title: Text(
        title,
        style: Style.textTitleCourse.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right,
        size: 30,
        color: ColorLxp.gray,
      ),
    );
  }
}
