// ignore_for_file: avoid_unnecessary_containers, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/category.dart';
import 'package:flutter_application_3/utils/consultant.dart';

import 'package:flutter_application_3/utils/bottom_navigation.dart';
import 'package:intl/intl.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller = TextEditingController();
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('dd-MMM-yyyy').format(DateTime.now());
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
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
                        setState(() {
                          _searchText = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
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
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20))),
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Category",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Category(
                                backgroundColor: Colors.purple,
                                categoryName: "Relationship",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Category(
                                backgroundColor: Colors.blue,
                                categoryName: "Career",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Category(
                                backgroundColor: Colors.orange,
                                categoryName: "Education",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Category(
                                backgroundColor: Colors.pink,
                                categoryName: "Other",
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Consultant",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                        ],
                      ),
                      //List View
                      Expanded(
                        child: ListView(
                          children: const [
                            ConsultantTile(
                              consultantImage: 'images/1.png',
                              consultantName: "Ali",
                              consultantCategory: "Career",
                            ),
                            ConsultantTile(
                              consultantImage: 'images/2.png',
                              consultantName: "Sana",
                              consultantCategory: "Education",
                            ),
                            ConsultantTile(
                              consultantImage: 'images/3.png',
                              consultantName: "Ahmed",
                              consultantCategory: "Relationship",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
