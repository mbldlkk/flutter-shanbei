import 'package:flutter_application_1/common/studyWord/api.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';

import 'package:get/get.dart';



class CommanStudyWordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudyController());
    Get.lazyPut(() => StudyWordApi());
  }
}
