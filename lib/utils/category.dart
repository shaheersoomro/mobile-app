import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Color backgroundColor;
  final String categoryName;

  const Category({
    super.key,
    required this.backgroundColor,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
        ),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Text(
            categoryName,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
