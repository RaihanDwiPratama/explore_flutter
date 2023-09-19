import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

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
    Text(
      'Beranda',
      style: Style.optionStyle,
    ),
    Text(
      'Pelatihan-ku',
      style: Style.optionStyle,
    ),
    Text(
      'Penugasan',
      style: Style.optionStyle,
    ),
    Text(
      'Akun',
      style: Style.optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pelatihan-ku',
          style: Style.title,
        ),
        centerTitle: true,
        leading: const Icon(Icons.chevron_left),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_cal),
            label: 'Pelatihan-ku',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste),
            label: 'Penugasan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
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
