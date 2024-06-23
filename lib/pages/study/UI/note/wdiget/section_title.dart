import 'package:flutter/material.dart';

sectionTitle() {
  return SizedBox(
    width: 20.0,
    height: 20.0,
    child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 30,
              height: 8,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFD57F),
                  borderRadius: BorderRadius.circular(20)),
            )),
        const Positioned(
            // top: 0,
            bottom: 1,
            // right: 0,
            left: 6,
            child: Text(
              "单词所有笔记",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            )

            // TextButton(
            //     onPressed: () {},
            //     child: ),
            )
      ],
    ),
  );
}
