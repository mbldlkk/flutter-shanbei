import 'package:flutter/material.dart';

const itemHeight = 60.0;

listBase({required String title, required Widget child}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: SizedBox(
        height: itemHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            child
          ],
        )),
  );
}
