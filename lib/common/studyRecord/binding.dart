import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/studyRecord/api.dart';
import 'package:get/get.dart';

class CommonStudyRecordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudyRecordController());
    Get.lazyPut(() => StudyRecordApi());
  }
}
