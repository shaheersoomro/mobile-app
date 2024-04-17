import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text(
        "Setting",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ));
  }
}
