import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles.dart';

class WordSummaryItem extends StatelessWidget {
  final String name;
  final String explainCN;
  final String type;
  final bool isKnow;

  const WordSummaryItem(
      {super.key,
      required this.name,
      this.isKnow = true,
      required this.explainCN,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: isKnow ? Colors.black : Colors.amber[900]),
              ),
              const Icon(
                Icons.volume_down_rounded,
                color: AppColor.green,
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " $type.",
                style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                width: 25,
              ),
              Text(explainCN,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    // decoration: TextDecoration.underline,
                    // decorationColor: Colors.red,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
