import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyPlan/controller.dart';
import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/studyWord/study_timer.dart';
import 'package:get/get.dart';

Widget todayTaskSection() {
  final studyRecordc = Get.find<StudyRecordController>();
  final studyTimer = Get.find<StudyTimerController>();
  final studyPlanc = Get.find<StudyPlanController>();

  return Container(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
    decoration: const BoxDecoration(
        color: Color(0xFFE2F6F1),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text(
              "今日复习",
              style: TextStyle(color: Colors.grey),
            ),
            Obx(() => Text(
                  "${studyRecordc.todayReviewedSuccessWord}/${studyPlanc.todayNeedReviewedWord}",
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700),
                )),
          ],
        ),
        Column(
          children: [
            const Text(
              "今日新词",
              style: TextStyle(color: Colors.grey),
            ),
            Obx(() => Text(
                  "${studyRecordc.todayStudyedSuccessNewWord}/${studyPlanc.todayNeedStudyedNewWord}",
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700),
                )),
          ],
        ),
        Column(
          children: [
            const Text(
              "学习时间",
              style: TextStyle(color: Colors.grey),
            ),
            Obx(() => Text(
                  "${studyTimer.studyTime}min",
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ],
    ),
  );
}

class TodayTaskItem extends StatelessWidget {
  const TodayTaskItem({super.key, required this.name, required this.content});
  final String name;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(color: Colors.grey),
        ),
        Obx(() => Text(
              content,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            )),
      ],
    );
  }
}

todayTaskItem({required String name, required dynamic content}) {
  return Column(
    children: [
      Text(
        name,
        style: const TextStyle(color: Colors.grey),
      ),
      Obx(() => Text(
            content,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          )),
    ],
  );
}
