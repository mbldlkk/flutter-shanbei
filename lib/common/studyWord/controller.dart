import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';

import 'model/word.dart';
import 'api.dart';

enum StudyMode { studyNewWord, reviewOldWord }

enum KnowWordLevel { konw, unKnow, simple, unclick }

const duration = Duration(days: 1);

class StudyController extends GetxController {
  final studyWordApi = Get.find<StudyWordApi>();

  final _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;

  //当前学习单词类型 新词还是复习单词
  final currentStudyMode = Rxn<StudyMode>(StudyMode.studyNewWord);

  //学习完成 等待上传的数据
  late List<UploadWordItem> finishWord = [];

  late WordModel currentStudyWord;

  final _knowWordLevel = Rx<KnowWordLevel>(KnowWordLevel.unclick);
  KnowWordLevel get knowWordLevel => _knowWordLevel.value;
  set knowWordLevel(KnowWordLevel value) => _knowWordLevel.value = value;

  final _isInKnowWordUI = true.obs;
  bool get isInKnowWordUI => _isInKnowWordUI.value;
  set isInKnowWordUI(bool value) => _isInKnowWordUI.value = value;

  List<TodayReviewWord> todayReviewWordData = [];
  List<WordModel> todayNewWordData = [];

  //本轮需要学习的单词数量, 与服务器获取的单词数量绑定
  int thisStageStudyWordCount = 0;

  // 小结页面需要
  final List<SummaryWordItem> summaryWordData = [];

  // 默认就是在加载单词
  final isLoading = Rx<bool>(true);

  setIsLoading() {
    Timer(const Duration(seconds: 1), () {
      log("修改加载状态");
      isLoading.value = false;
    });
  }

  setCurrentStudyWord() {
    if (currentStudyMode.value == StudyMode.studyNewWord) {
      currentStudyWord = todayNewWordData[currentIndex];
    } else {
      currentStudyWord = todayReviewWordData[currentIndex].word;
    }
    log(currentStudyWord.toString());
  }

  switchKnowWord() {
    knowWordLevel = KnowWordLevel.konw;
  }

  switchUnKnowWord() {
    knowWordLevel = KnowWordLevel.unKnow;
  }

  switchWordSimple() {
    knowWordLevel = KnowWordLevel.simple;
  }

  setInKnowUI() {
    isInKnowWordUI = true;
  }

  setOutKnowUI() {
    isInKnowWordUI = false;
  }

  fetchStudyWord() async {
    // try {
    //获取一轮学习单词数据, 即新词或复习词响应数据
    final studtWordRes = await studyWordApi.getStageWord();
    //不管先学什么,  这一轮学习的长度是确定的
    thisStageStudyWordCount = studtWordRes.data.length;

    //新词
    if (studtWordRes.type == 0) {
      currentStudyMode.value = StudyMode.studyNewWord;
      todayNewWordData = studtWordRes.data;
    } else {
      currentStudyMode.value = StudyMode.reviewOldWord;
      todayReviewWordData = studtWordRes.data;
    }
    setCurrentStudyWord();
    // } catch (e, s) {
    //   log(e.toString(), stackTrace: s);
    //   Get.snackbar("错误", "获取本轮学习单词时出错,请稍后再尝试,即将跳转至主页");
    //   Get.offNamed(AppPagesName.index);
    // rethrow;
    // }
  }

  addStudyRecord() {
    DateTime now = DateTime.now().toUtc();
    String nextReviewTime = now.toIso8601String();
    //默认 简单和不认识, 都是今天复习, 简单词由于标记为简单, 所以下次复习时间无意义
    log(nextReviewTime);
    bool isSimple = false;
    bool isKnow = true;
    //默认新学单词, 学习次数必定为1
    int studyTimes = 1;

    if (knowWordLevel == KnowWordLevel.unKnow) {
      isKnow = false;
    }
    if (knowWordLevel == KnowWordLevel.konw) {
      //认识那就明天再复习
      nextReviewTime = now.add(duration).toIso8601String();
      log("nextReviewTime: $nextReviewTime");
    }
    if (knowWordLevel == KnowWordLevel.simple) {
      isSimple = true;
    }

    if (currentStudyMode.value == StudyMode.reviewOldWord) {
      //如果是复习单词,则在原有基础上加1
      studyTimes = todayReviewWordData[currentIndex].studyTimes + 1;
    }

    summaryWordData.add(SummaryWordItem(
        name: currentStudyWord.name,
        type: currentStudyWord.type,
        USAudio: currentStudyWord.USAudio,
        explainCN: currentStudyWord.explainCN,
        isKnow: isKnow));

    finishWord.add(UploadWordItem(
        wordId: currentStudyWord.id,
        nextReviewTime: nextReviewTime,
        isSimple: isSimple,
        studyTimes: studyTimes));
  }

  //添加学习记录后下一个单词
  nextWord() {
    addStudyRecord();
    knowWordLevel = KnowWordLevel.unclick;
    currentIndex++;
    if (currentIndex != thisStageStudyWordCount) {
      setCurrentStudyWord();
    }
  }

  uploadStudyRecord() async {
    //如果finish 为空, 提交无意义
    if (finishWord.isEmpty) {
      return;
    }

    dynamic uploadStudyNewWord;
    dynamic uploadReviewWord;

    var jsonUploadWordData = finishWord.map((i) => i.toJson()).toList();
    if (currentStudyMode.value == StudyMode.studyNewWord) {
      uploadStudyNewWord = jsonUploadWordData;
    } else {
      uploadReviewWord = jsonUploadWordData;
    }

    studyWordApi.uploadWordData(uploadStudyNewWord, uploadReviewWord);
  }

  reset() {
    currentIndex = 0;
    todayNewWordData = [];
    todayReviewWordData = [];
    finishWord.clear();
    summaryWordData.clear();
  }
}
