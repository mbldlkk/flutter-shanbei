import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/pages/study/controller/study_page.dart';
import 'package:get/get.dart';

nextButton() {
  final wordStudyController = Get.find<StudyPageController>();
  final studyController = Get.find<StudyController>();
  final studyRecordController = Get.find<StudyRecordController>();
  return Positioned(
      bottom: 40,
      height: 50,
      right: 13,
      left: 13,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(
            colors: [Color(0xFF00C087), Color(0xFF3AD9BE)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          // style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all()),
          onPressed: () {
            log("当前单词索引是${studyController.currentIndex},当前学会的新词 ${studyRecordController.todayStudyedSuccessNewWord}");
            //调整学习记录

            if (studyController.knowWordLevel != KnowWordLevel.unKnow) {
              if (studyController.currentStudyMode.value ==
                  StudyMode.studyNewWord) {
                studyRecordController.studyedNewWordSuccess();
              } else {
                studyRecordController.reviewedWordSuccess();
              }
            }

            studyRecordController.saveLocalData();
            studyController.nextWord();

            //路由跳转
            if (studyController.summaryWordData.length !=
                studyController.thisStageStudyWordCount) {
              //调整学习后总结和上传数据
              wordStudyController.toWordKnowUI();
            } else {
              wordStudyController.toWordSummary();
            }
          },
          child: const Text(
            '下一个',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 3.0,
            ),
          ),
        ),
      ));
}
