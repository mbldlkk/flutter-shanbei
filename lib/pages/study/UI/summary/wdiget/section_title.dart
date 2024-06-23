import 'package:flutter/material.dart';

sectionTitle({required String labelText, required double width}) {
  return SizedBox(
    width: 0,
    height: 20,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 40,
              height: 8,
              decoration: BoxDecoration(
                  color: const Color(0xFF06C38D),
                  borderRadius: BorderRadius.circular(20)),
            )),
        Positioned(
            // top: 0,
            bottom: 1,
            // right: 0,
            left: 6,
            child: Text(
              labelText,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ))
      ],
    ),
  );
}
