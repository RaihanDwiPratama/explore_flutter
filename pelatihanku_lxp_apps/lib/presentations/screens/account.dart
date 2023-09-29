import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/header_account.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/settings_profile.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HeaderAccount(),
          SettingsProfile(),
        ],
      ),
    );
  }
}
