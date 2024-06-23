import 'package:flutter_application_1/common/studyPlan/controller.dart';
import 'package:flutter_application_1/common/studyPlan/api.dart';
import 'package:get/get.dart';

class CommonStudyPlanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudyPlanController());
    Get.lazyPut(() => StudyPlanApi());
  }
}
