import 'dart:developer';

import 'package:flutter_application_1/common/studyRecord/model/study_record.dart';
import 'package:get/get.dart';

import 'api.dart';
import 'local_storage.dart';

class StudyRecordController extends GetxController {
  final studyRecordApi = Get.find<StudyRecordApi>();

  final _todayStudyedSuccessNewWord = 0.obs;
  int get todayStudyedSuccessNewWord => _todayStudyedSuccessNewWord.value;
  set todayStudyedSuccessNewWord(int value) =>
      _todayStudyedSuccessNewWord.value = value;

  final _todayReviewedSuccessWord = 0.obs;
  int get todayReviewedSuccessWord => _todayReviewedSuccessWord.value;
  set todayReviewedSuccessWord(int value) =>
      _todayReviewedSuccessWord.value = value;

  //当前书籍的学习通过的总量
  final _currentBookStudyedSuccessCount = 0.obs;
  int get currentBookStudyedSuccessCount =>
      _currentBookStudyedSuccessCount.value;
  set currentBookStudyedSuccessCount(int value) =>
      _currentBookStudyedSuccessCount.value = value;

  //退出学习页面及 学习完成之后保存
  void saveLocalData() {
    StudyRecordLocalStorge.write(StudyRecordInfo(
        todayStudyedSuccessNewWord: todayStudyedSuccessNewWord,
        todayReviewedSuccessWord: todayReviewedSuccessWord,
        currentBookStudyedSuccessCount: currentBookStudyedSuccessCount));
  }

  studyedNewWordSuccess() {
    todayStudyedSuccessNewWord++;
    currentBookStudyedSuccessCount++;
  }

  reviewedWordSuccess() {
    todayReviewedSuccessWord++;
    currentBookStudyedSuccessCount++;
  }

  @override
  void onInit() {
    super.onInit();

    final studyRecordInfo = StudyRecordLocalStorge.read();
    //逻辑上应该是有
    if (studyRecordInfo == null) {
      log("没有获取到本地的学习记录");
      return;
    }

    todayStudyedSuccessNewWord = studyRecordInfo.todayStudyedSuccessNewWord;
    todayReviewedSuccessWord = studyRecordInfo.todayReviewedSuccessWord;
    currentBookStudyedSuccessCount =
        studyRecordInfo.currentBookStudyedSuccessCount;
  }
}

// 每日重置
// newDayreset() {
//   log("新的一天,重置本地学习记录");
//   save(0, 0);
//   return;
// }
