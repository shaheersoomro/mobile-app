// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final Color iconBackgroundColor;
  final String exerciseName;
  final int noOfExercises;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.iconBackgroundColor,
    required this.exerciseName,
    required this.noOfExercises,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: iconBackgroundColor),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exerciseName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$noOfExercises Exercises',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
