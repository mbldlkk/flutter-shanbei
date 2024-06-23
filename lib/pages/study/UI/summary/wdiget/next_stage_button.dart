import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyPlan/controller.dart';
import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/pages/study/controller/study_page.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

nextStageButton() {
  //下一轮
  final wordStudyController = Get.find<StudyPageController>();
  final studyController = Get.find<StudyController>();
  final studyRecordController = Get.find<StudyRecordController>();
  final studyPlanController = Get.find<StudyPlanController>();

  //如果 学习计划量已经完成
  final isFinish = (studyPlanController.todayNeedReviewedWord ==
          studyRecordController.todayReviewedSuccessWord) &&
      (studyPlanController.todayNeedStudyedNewWord ==
          studyRecordController.todayStudyedSuccessNewWord);

  return Container(
    // width: 150,
    padding: const EdgeInsets.symmetric(vertical: 8),
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
          backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
      onPressed: () async {
        //如果还有单词 进入下一轮单词学习
        //没有单词则 进入打卡页面
        await studyController.uploadStudyRecord();
        studyController.reset();
        //今日计划完成 跳转至打卡页面
        if (isFinish) {
          Get.offNamed(AppPagesName.checkIn);
        } else {
        await studyController.fetchStudyWord();

          wordStudyController.toWordKnowUI();
        }
      },
      child: Text(
        isFinish ? '完成' : "下一组",
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          letterSpacing: 3.0,
        ),
      ),
    ),
  );
}
