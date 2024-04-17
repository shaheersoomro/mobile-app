// ignore_for_file: avoid_unnecessary_containers, unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/first_page.dart';

import 'package:flutter_application_3/pages/consultant_page.dart';

import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter_application_3/pages/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List _pages = [FirstPage(), ConsultantPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: FlashyTabBar(
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
                Icons.people,
                color: Colors.white,
              ),
              title: const Text(
                'Consultant',
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
        ),
        body: _pages[_selectedIndex]);
  }
}
