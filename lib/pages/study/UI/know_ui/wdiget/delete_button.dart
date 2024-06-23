import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/pages/study/controller/study_page.dart';
import 'package:get/get.dart';

Widget deleteButton() {
  final studyController = Get.find<StudyController>();
  final wordStudyController = Get.find<StudyPageController>();
  return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF0F0EB),
        textStyle: const TextStyle(color: Colors.red),
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      onPressed: () {
        studyController.setInKnowUI();
        studyController.switchWordSimple();
        wordStudyController.toWordDetail();
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.grey,
        size: 16,
      ),
      label: const Text(
        "标记为太简单",
        style: TextStyle(
          color: Colors.grey,
        ),
      ));
}
