import 'package:flutter_application_1/common/checkIn/api.dart';
import 'package:flutter_application_1/common/studyPlan/api.dart';
import 'package:flutter_application_1/common/studyRecord/api.dart';
import 'package:flutter_application_1/common/userBook/api.dart';
import 'package:flutter_application_1/pages/auth/pages/email_sign_in/controller.dart';
import 'package:get/get.dart';

class EmailSignInPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailPageController());
    Get.lazyPut(() => UserBookApi());
    Get.lazyPut(() => StudyPlanApi());
    Get.lazyPut(() => StudyRecordApi());
    Get.lazyPut(() => CheckInApi());
  }
}
