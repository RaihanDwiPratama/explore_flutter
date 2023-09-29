import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/setting_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/edit_profile.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
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
            title: 'Sunting Profil',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfile(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          const Divider(
            height: 1,
            color: ColorLxp.neutral200,
          ),
          const SizedBox(height: 10),
          SettingLxp(
            leading: Icons.settings_outlined,
            title: 'Pengaturan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JoinCourse(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          const Divider(
            height: 1,
            color: ColorLxp.neutral200,
          ),
          const SizedBox(height: 10),
          SettingLxp(
            leading: Icons.lock_outline,
            title: 'Ubah Kata Sandi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JoinCourse(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          const Divider(
            height: 1,
            color: ColorLxp.neutral200,
          ),
          const SizedBox(height: 10),
          SettingLxp(
            leading: Icons.logout_outlined,
            title: 'Keluar',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const JoinCourse(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          const Divider(
            height: 1,
            color: ColorLxp.neutral200,
          ),
        ],
      ),
    );
  }
}
