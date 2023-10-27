import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/account/screen/account_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/assignment/screen/assignment_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/bottom_navigation_bar.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/home/screen/home_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/screen/course_page.dart';

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
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const BottomNavigationBarExample(),
        'home':(context) => const HomePage(),
        'courses':(context) => const CoursePage(),
        'assignment':(context) => const AssignmentPage(),
        'account':(context) => const AccountPage(),
      },
      // home: const BottomNavigationBarExample(),
    );
  }
}
