import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:get/get.dart';

class CommonSettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsController());
  }
}
