import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
      backgroundColor: Colors.blue[800],
      selectedIndex: _selectedIndex,
      showElevation: true,
      onItemSelected: (index) => setState(() {
        _selectedIndex = index;
      }),
      items: [
        FlashyTabBarItem(
          icon: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        FlashyTabBarItem(
          icon: const Icon(
            Icons.message,
            color: Colors.white,
          ),
          title: const Text(
            'Message',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        FlashyTabBarItem(
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          title: const Text(
            'Setting',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
