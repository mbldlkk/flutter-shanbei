import 'package:flutter_application_1/common/checkIn/api.dart';
import 'package:flutter_application_1/common/checkIn/controller.dart';
import 'package:flutter_application_1/common/userBook/api.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:flutter_application_1/pages/home/controller/nav.dart';
import 'package:get/get.dart';

class IndexPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavController());
    Get.lazyPut(() => UserBookController());
    Get.lazyPut(() => UserBookApi());
    Get.lazyPut(() => CheckInController());
    Get.lazyPut(() => CheckInApi());
  }
}
