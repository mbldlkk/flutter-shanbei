import 'package:flutter_application_1/common/checkIn/api.dart';
import 'package:flutter_application_1/common/checkIn/controller.dart';
import 'package:flutter_application_1/common/studyRecord/api.dart';
import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:get/get.dart';

class CheckInPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudyRecordController());
    Get.lazyPut(() => StudyRecordApi());
    Get.lazyPut(() => CheckInController());
    Get.lazyPut(() => CheckInApi());
  }
}
