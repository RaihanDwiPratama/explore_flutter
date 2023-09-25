import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/header_account.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(24.0, 60.0, 24.0, 16.0),
        child: const Column(
          children: [
            HeaderAccount(),
          ],
        ),
      ),
    );
  }
}
