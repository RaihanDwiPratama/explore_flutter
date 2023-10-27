import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/account/screen/account_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/home/screen/home_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/assignment/screen/assignment_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/screen/course_page.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CoursePage(),
    AssignmentPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/House.svg'),
            label: 'Beranda',
            activeIcon: SvgPicture.asset(
              'assets/icons/House.svg',
              color: const Color(0xff3498DB),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/AddressBook.svg'),
            label: 'Pelatihan-ku',
            activeIcon: SvgPicture.asset(
              'assets/icons/AddressBook.svg',
              color: const Color(0xff3498DB),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/ClipboardText.svg'),
            label: 'Penugasan',
            activeIcon: SvgPicture.asset(
              'assets/icons/ClipboardText.svg',
              color: const Color(0xff3498DB),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/UserCircle.svg'),
            label: 'Akun',
            activeIcon: SvgPicture.asset(
              'assets/icons/UserCircle.svg',
              color: const Color(0xff3498DB),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff3498DB),
        unselectedItemColor: const Color(0xffCDD5DF),
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
