import 'package:flutter/material.dart';

class EmoticonFace extends StatefulWidget {
  final String emoticonFace;
  final String feeling;
  const EmoticonFace(
      {super.key, required this.emoticonFace, required this.feeling});

  @override
  State<EmoticonFace> createState() => _EmoticonFaceState();
}

class _EmoticonFaceState extends State<EmoticonFace> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: _isPressed ? Colors.blue[500] : Colors.blue[600],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Text(widget.emoticonFace,
                  style: const TextStyle(
                    fontSize: 28,
                  )),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.feeling,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
