import 'package:flutter_application_1/common/studyRecord/api.dart';
import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/userBook/api.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:get/get.dart';

class UserBookBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserBookController());
    Get.lazyPut(() => UserBookApi());
    Get.lazyPut(() => StudyRecordController());
    Get.lazyPut(() => StudyRecordApi());
  }
}
