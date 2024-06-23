import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:flutter_application_1/pages/study/UI/loading/loading.dart';
import '../UI/detail/detail.dart';
import '../UI/know_ui/know_ui.dart';
import '../UI/note/note.dart';
import '../UI/summary/summary.dart';

enum WordSectionUI { wordDetail, wordSummary, wordKnowUI, wordNote, loading }

Map<WordSectionUI, Widget> wordSectionUIMap = {
  WordSectionUI.loading: const WordLoadingPage(),
  WordSectionUI.wordDetail: const WordDetailPage(),
  WordSectionUI.wordSummary: const WordSummaryPage(),
  WordSectionUI.wordKnowUI: const WordKnowUIPage(),
  WordSectionUI.wordNote: const WordNotePage()
};

// var currentUI = wordSectionUIMap[WordSectionUI.wordKnowUI]!;
var currentUI = WordSectionUI.wordKnowUI;

class StudyPageController extends GetxController {
  final studySectionUI = Rxn<WordSectionUI>(WordSectionUI.loading);

  void setStudySeq(WordSectionUI? value) {
    studySectionUI.value = value;
  }

  toLoading() {
    studySectionUI.value = WordSectionUI.loading;
  }

  toWordDetail() {
    studySectionUI.value = WordSectionUI.wordDetail;
  }

  toWordSummary() {
    studySectionUI.value = WordSectionUI.wordSummary;
  }

  toWordKnowUI() {
    studySectionUI.value = WordSectionUI.wordKnowUI;
  }

  toWordNote() {
    studySectionUI.value = WordSectionUI.wordNote;
  }
}
