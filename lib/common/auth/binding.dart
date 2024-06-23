// import '../../../bakeup/controller.dart';
import 'package:flutter_application_1/common/auth/api.dart';
import 'package:get/get.dart';

class CommonAuthBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => AuthController());
    Get.lazyPut(() => AuthApi());
  }
}
