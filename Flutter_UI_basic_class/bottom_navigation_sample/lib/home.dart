import 'package:bottom_navigation_sample/screen_accounts.dart';
import 'package:bottom_navigation_sample/screen_main.dart';
import 'package:bottom_navigation_sample/screen_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currenSelectedIndex = 0;
  final _pages = [
    ScreenMain(),
    ScreenSearch(),
    ScreenAccounts(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currenSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currenSelectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        elevation: 10,
        onTap: (newIndex) {
          setState(() {
            _currenSelectedIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
        ],
      ),
    );
  }
}
