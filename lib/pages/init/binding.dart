import 'package:flutter_application_1/common/studyPlan/api.dart';
import 'package:flutter_application_1/common/studyRecord/api.dart';
import 'package:flutter_application_1/common/userBook/api.dart';
import 'package:flutter_application_1/pages/init/controller.dart';
import 'package:get/get.dart';

class InitPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InitPageController());
    Get.lazyPut(() => StudyPlanApi());
    Get.lazyPut(() => UserBookApi());
    Get.lazyPut(() => StudyRecordApi());
  }
}
