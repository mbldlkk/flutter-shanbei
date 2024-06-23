import 'package:flutter/material.dart';

dictionaryColinsSectionUI() {
  return Container(
      height: 120,
      decoration: BoxDecoration(
          color: const Color(0xFFC4CAC6),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                  color: const Color(0xFFBB2529),
                  borderRadius: BorderRadius.circular(5.0)),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 8.0),
                child: Text(
                  "Colins",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            const Text("权威的英文词典,用英文学英文"),
            const SizedBox(
              height: 7.0,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: const Color(0xFFE5E6E3),
                  borderRadius: BorderRadius.circular(5.0)),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 8.0),
                child:
                    Text("3天免费使用", style: TextStyle(color: Color(0xFF80807E))),
              ),
            ),
          ],
        ),
      ));
}
