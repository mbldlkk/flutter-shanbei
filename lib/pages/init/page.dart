import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/init/controller.dart';
import 'package:flutter_application_1/styles.dart';

import 'package:get/get.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<InitPageController>();

    return const Scaffold(
      appBar: null,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 10,
              width: 10,
            ),
            VerticalText(
              text: "知道你在改变   ",
            ),
            Text(
              "扇贝",
              style: TextStyle(fontSize: 32, color: AppColor.green),
            )
          ],
        ),
      ),
    );
  }
}

class VerticalText extends StatelessWidget {
  final String text;
  const VerticalText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    List<Text> texts = text
        .split("")
        .map((e) => Text(
              e,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ))
        .toList();
    return Wrap(
      direction: Axis.vertical,
      spacing: 15, //主轴 即竖直向间隔
      runSpacing: 400,
      children: texts,
    );
  }
}
