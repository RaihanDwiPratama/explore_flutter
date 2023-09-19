import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/bottom_navigation_bar.dart';

void main() {
  runApp(const Pelatihanku());
}

class Pelatihanku extends StatelessWidget {
  const Pelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const BottomNavigationBarExample(),
    );
  }
}
