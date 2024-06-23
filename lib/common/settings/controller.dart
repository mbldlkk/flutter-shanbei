//第三方
import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';
import 'model/settings.dart';
import 'local_storage.dart';

class SettingsController extends GetxController {
  final intelligentMode = Rx<bool>(true);

  void setIntelligentMode() {
    intelligentMode.value = !intelligentMode.value;
    debounceSave();
  }

  var studyMode = Rx<StudyMode>(StudyMode.confirm);
  void setStudyMode(StudyMode value) {
    studyMode.value = value;
    debounceSave();
  }

  var studySeq = Rx<StudySeq>(StudySeq.reviewFirst);
  void setStudySeq(StudySeq value) {
    studySeq.value = value;
    debounceSave();
  }

  var wordPronounce = Rx<WordPronounce>(WordPronounce.US);
  void setWordPronounce(WordPronounce value) {
    wordPronounce.value = value;
    debounceSave();
  }

  final wordAutoPronounce = Rx<bool>(true);
  void setWordAutoPronounce() {
    wordAutoPronounce.value = !wordAutoPronounce.value;
    debounceSave();
  }

  final sentenceAutoPronounce = Rx<bool>(true);
  void setSentenceAutoPronounce() {
    sentenceAutoPronounce.value = !sentenceAutoPronounce.value;
    debounceSave();
  }

  final preloadTodayAudio = Rx<bool>(false);
  void setPreloadTodayAudio() {
    preloadTodayAudio.value = !preloadTodayAudio.value;
    debounceSave();
  }

  var wordPageFontSize = Rx<WordPageFontSize>(WordPageFontSize.standard);
  void setWordPageFontSize(WordPageFontSize value) {
    wordPageFontSize.value = value;
    debounceSave();
  }

  var homePageStudyMode = Rx<HomePageStudyMode>(HomePageStudyMode.common);
  void setHomePageStudyMode(HomePageStudyMode value) {
    homePageStudyMode.value = value;
    debounceSave();
  }

  var knowWordPageUI = Rx<KnowWordPageUI>(KnowWordPageUI.oldUI);
  void setKnowWordPageUI(KnowWordPageUI value) {
    knowWordPageUI.value = value;
    debounceSave();
  }

  final collinsDefaultShow = Rx<bool>(true);
  void setCollinsDefaultShow() {
    collinsDefaultShow.value = !collinsDefaultShow.value;
    debounceSave();
  }

  var colinsDictionary = Rx<ColinsDictionary>(ColinsDictionary.en);
  void setColinsDictionary(ColinsDictionary value) {
    colinsDictionary.value = value;
    debounceSave();
  }

  Timer? timer;

  debounceSave() {
    //如果计时器存在就关掉
    timer?.cancel();
    log("测试防抖");
    timer = Timer(const Duration(seconds: 2), saveSettings);
  }

  void saveSettings() {
    // 必须追加一个防抖, 以防设置修改时频繁写入?
    log("开始存储配置文件...");

    SettingsLocalStorge.write(SettingsInfo(
        intelligentMode: intelligentMode.value,
        studyMode: studyMode.value,
        studySeq: studySeq.value,
        wordPronounce: wordPronounce.value,
        wordAutoPronounce: wordAutoPronounce.value,
        sentenceAutoPronounce: sentenceAutoPronounce.value,
        preloadTodayAudio: preloadTodayAudio.value,
        wordPageFontSize: wordPageFontSize.value,
        homePageStudyMode: homePageStudyMode.value,
        knowWordPageUI: knowWordPageUI.value,
        collinsDefaultShow: collinsDefaultShow.value,
        colinsDictionary: colinsDictionary.value));

    return;
  }

  SettingsInfo? loadSettings() {
    final settings = SettingsLocalStorge.read();
    if (settings == null) {
      //应该报错
      return null;
    }
    return settings;
  }

  @override
  void onInit() {
    super.onInit();

    final settings = loadSettings();
    if (settings != null) {
      intelligentMode.value = settings.intelligentMode;
      studyMode.value = settings.studyMode;
      studySeq.value = settings.studySeq;
      wordPronounce.value = settings.wordPronounce;
      wordAutoPronounce.value = settings.wordAutoPronounce;
      sentenceAutoPronounce.value = settings.sentenceAutoPronounce;
      preloadTodayAudio.value = settings.preloadTodayAudio;
      wordPageFontSize.value = settings.wordPageFontSize;
      homePageStudyMode.value = settings.homePageStudyMode;
      knowWordPageUI.value = settings.knowWordPageUI;
      collinsDefaultShow.value = settings.collinsDefaultShow;
      colinsDictionary.value = settings.colinsDictionary;
    }
  }
}
