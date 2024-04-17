// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/emoticon_face.dart';
import 'package:flutter_application_3/utils/exercise_.dart';
import 'package:intl/intl.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController _controller = TextEditingController();
  String _searchText = '';
  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('dd-MMM-yyyy').format(DateTime.now());
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi, Shaheer!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          currentDate,
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter search query',
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none, // Remove bottom line
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    onChanged: (value) {
                      setState(
                        () {
                          _searchText = value;
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    EmoticonFace(
                      emoticonFace: '😞',
                      feeling: 'Bad',
                    ),
                    EmoticonFace(
                      emoticonFace: '🙂',
                      feeling: 'Fine',
                    ),
                    EmoticonFace(
                      emoticonFace: '😂',
                      feeling: 'Good',
                    ),
                    EmoticonFace(
                      emoticonFace: '🥳',
                      feeling: 'Excellent',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12.5,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    //List View
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseTile(
                            icon: Icons.favorite,
                            iconBackgroundColor: Colors.orange,
                            exerciseName: 'Speaking Skills',
                            noOfExercises: 16,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            iconBackgroundColor: Colors.purple,
                            exerciseName: 'Reading Skills',
                            noOfExercises: 18,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            iconBackgroundColor: Colors.blue,
                            exerciseName: 'Writing Skills',
                            noOfExercises: 18,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
