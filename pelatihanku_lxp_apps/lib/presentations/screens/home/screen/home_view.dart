import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: Style.optionStyle,
        ),
      ),
    );
  }
}
