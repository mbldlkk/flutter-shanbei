import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  final String content;
  final String author;
  const NoteItem({super.key, required this.author, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(content),
              Text(
                "作者: $author",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const Icon(Icons.star_outline)
        ],
      ),
    );
  }
}
