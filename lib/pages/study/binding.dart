import 'package:flutter_application_1/pages/study/controller/word_note.dart';
import 'package:get/get.dart';

import '../../common/studyWord/study_timer.dart';
import 'controller/study_page.dart';
import 'controller/word_detail.dart';

class StudyPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WordDetailController());
    Get.lazyPut(() => StudyTimerController());
    Get.lazyPut(() => StudyPageController());
    Get.lazyPut(() => WordNoteController());
  }
}
