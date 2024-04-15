import 'package:flutter/material.dart';

class ConsultantTile extends StatelessWidget {
  final String consultantImage;
  final String consultantName;
  final String consultantCategory;

  const ConsultantTile({
    super.key,
    required this.consultantImage,
    required this.consultantName,
    required this.consultantCategory,
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
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(consultantImage), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    consultantName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    consultantCategory,
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
