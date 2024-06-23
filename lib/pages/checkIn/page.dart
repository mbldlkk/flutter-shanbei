import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/studyWord/local_storage.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:get/get.dart';

import 'wdiget/check_in_button.dart';
import 'wdiget/today_new_word.dart';
import 'wdiget/today_review_word.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final studyRecordController = Get.find<StudyRecordController>();

    final studyTime = StudyTimerLocalStorage.read();

    return DecoratedBox(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              stops: [0.1, 0.4, 0.8],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFEFC79C),
                Color(0xFFAFDBD3),
                Color(0xFFE8E6E8)
              ])),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(flex: 10, child: SizedBox.shrink()),
              RichText(
                  text: TextSpan(
                children: [
                  const TextSpan(text: "非常棒! 坚持了 "),
                  TextSpan(
                      text: "$studyTime",
                      style: const TextStyle(color: AppColor.green)),
                  const TextSpan(text: " 分钟"),
                ],
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              )),
              const Expanded(flex: 1, child: SizedBox.shrink()),
              TodayNewWord(
                wordCount: studyRecordController.todayStudyedSuccessNewWord,
              ),
              const Expanded(flex: 1, child: SizedBox.shrink()),
              TodayReviewWord(
                wordCount: studyRecordController.todayReviewedSuccessWord,
              ),
              const Expanded(flex: 10, child: SizedBox.shrink()),
              const Row(
                children: [
                  Expanded(
                    child: CheckInButton(),
                  )
                ],
              ),
              const Expanded(flex: 1, child: SizedBox.shrink()),
            ],
          ),
        ),
      ),
    );
  }
}
