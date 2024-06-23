import 'package:flutter/material.dart';

Widget subTitleSection(String text) {
  return Container(
    // width: double.maxFinite,
    // alignment: Alignment.centerLeft,
    padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10.0),
    // height: itemHeight,
    decoration: const BoxDecoration(color: Color(0xFFF7F5F7)
        // Color(0xFFF7F5F7),
        //rgb(247, 245, 247)
        ),
    child: Text(
      text,
      style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
    ),
  );
}
