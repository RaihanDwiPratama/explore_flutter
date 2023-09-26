import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/setting_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/join_course.dart';

class SettingsProfile extends StatelessWidget {
  const SettingsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 70.0),
          Text(
            'Pengaturan Akun',
            style: Style.textTitleCourse.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          SettingLxp(
              leading: Icons.person_outline,
              title: 'Edit Profile',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const JoinCourse(),
                    ));
              })
        ],
      ),
    );
  }
}
