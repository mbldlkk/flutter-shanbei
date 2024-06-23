import 'package:flutter_application_1/common/userBook/api.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:get/get.dart';

class CommonUserBookBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserBookController());
    Get.lazyPut(() => UserBookApi());
  }
}
