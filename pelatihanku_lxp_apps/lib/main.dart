import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/bottom_navigation_bar.dart';

void main() {
  runApp(const Pelatihanku());
}

class Pelatihanku extends StatelessWidget {
  const Pelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}
