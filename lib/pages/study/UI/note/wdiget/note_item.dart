import 'package:flutter/material.dart';

class NoteIatem extends StatelessWidget {
  const NoteIatem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text("content"),
              Text(
                "作者: ",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Icon(Icons.star_outline)
        ],
      ),
    );
  }
}
