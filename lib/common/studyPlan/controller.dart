import 'dart:developer';

import 'package:get/get.dart';

import 'api.dart';
import 'local_storage.dart';

class StudyPlanController extends GetxController {
  final _todayNeedStudyedNewWord = 0.obs;
  int get todayNeedStudyedNewWord => _todayNeedStudyedNewWord.value;
  set todayNeedStudyedNewWord(int value) =>
      _todayNeedStudyedNewWord.value = value;

  final _todayNeedReviewedWord = 0.obs;
  int get todayNeedReviewedWord => _todayNeedReviewedWord.value;
  set todayNeedReviewedWord(int value) => _todayNeedReviewedWord.value = value;

  final studyPlanApi = Get.find<StudyPlanApi>();

  @override
  void onInit() {
    super.onInit();
    init();
  }

  init() {
    final studyPlan = StudyPlanLocalStorge.read();

    if (studyPlan != null) {
      todayNeedReviewedWord = studyPlan.todayNeedReviewedWord;
      todayNeedStudyedNewWord = studyPlan.todayNeedStudyedNewWord;
      return;
    }

    log("初始化或登录时的 本地缓存的学习计划丢失!");
    // return studyPlan;
  }

  // 这个逻辑偏向于 获取每日学习计划, 而不是初始化. 服务端获取每日学习计划只需要一次
  init1() async {
    final studyPlanInfo = await studyPlanApi.fetchTodayStudyPlan();

    todayNeedStudyedNewWord = studyPlanInfo.todayNeedStudyedNewWord;
    todayNeedReviewedWord = studyPlanInfo.todayNeedReviewedWord;

    //存储本地
    StudyPlanLocalStorge.write(studyPlanInfo);
  }
}
